//water and its treatment//
//example 2.18.22//
clc    
Purity_Lime=.85
Purity_soda=.80
Rate_lime=9//Rs.per kg//
Rate_soda=35//Rs.per kg//
W1=20.4;//amount of CaSO4 in ppm//
W2=9.5;//amount of MgCl2 in ppm//
W3=7.3;//amount of HCl in ppm//
M1=100/136;//multiplication factor of CaSO4//
M2=100/95;//multiplication factor of MgCl2//
M3=100/(36.5*2);//multiplication factor of HCl//
P1=W1*M1;//in terms of CaCO3//S
P2=W2*M2;//in terms of CaCO3//L+S 
P3=W3*M3;//in terms of CaCO3//L+S
V=80000;//volume of water in litres//
L=0.74*(P2+P3)*V/Purity_Lime;//lime required in mg//
L=L/10^6;
printf("\nLime required is %.3f kg",L);
S=1.06*(P1+P2+P3)*V/Purity_soda;//soda required in mg//
S=S/10^6;
printf("\nSoda required is %.2f kg",S)
Cost_lime=L*Rate_lime
Cost_soda=S*Rate_soda
printf("\nCost of lime is Rs. %.2f",Cost_lime);
printf("\nCost of soda is Rs. %.2f",Cost_soda)