//water and its treatment//
//example 2.18.25//
clc    
Purity_Lime=.90
Purity_soda=.90
Rate_lime=7//Rs.per kg//
Rate_soda=35//Rs.per kg//
W1=30;//amount of Ca++ in ppm//
W2=21.6;//amount of Mg++ in ppm//
W3=12.2;//amount of HCO3- in ppm//
W4=4.4;//amount of CO2 in ppm//
W5=4.9;//amount of H2SO4 in ppm//
M1=100/40;//multiplication factor of Ca++//
M2=100/24;//multiplication factor of Mg++//
M3=100/(61*2);//multiplication factor of HCO3-//
M4=100/44;//multiplication factor of CO2//
M5=100/98;//multiplication factor of H2SO4//
P1=W1*M1;//in terms of CaCO3//S
P2=W2*M2;//in terms of CaCO3//L+S 
P3=W3*M3;//in terms of CaCO3//+L and -S
P4=W4*M4;//in terms of CaCO3//L
P5=W5*M5;//in terms of CaCO3//L+S
V=25000;//volume of water in litres//
L=0.74*(P2+P3+P4+P5)*V/Purity_Lime;//lime required in mg//
L=L/10^6;
printf("Quantity of Lime required is %.4f kg",L);
S=1.06*(P1+P2-P3+P5)*V/Purity_soda;//soda required in mg//
S=S/10^6;
printf("\nQuantity of Soda required is %.4f kg",S)
Cost_lime=L*Rate_lime
Cost_soda=S*Rate_soda
printf("\nCost of lime is Rs. %.2f",Cost_lime);
printf("\nCost of soda is Rs. %.2f",Cost_soda)