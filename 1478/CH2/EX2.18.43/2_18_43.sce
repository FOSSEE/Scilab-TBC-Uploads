//water and its treatment//
//example 2.18.43//
clc    
Purity_Lime=.92
Purity_soda=.95
W1=68.2;//amount of CaCO3 in ppm//
W2=29.6;//amount of Mg(NO3)2 in ppm//
W3=58.4;//amount of Mg(HCO3)2 in ppm//
W4=36;//amount of MgSO4 in ppm//
W5=95;//amount of MgCl2 in ppm//
W6=27.2;//amount of CaSO4 in ppm//
W7=19.3;//amount of Fe2O3 in ppm//
M1=100/100;//multiplication factor of CaCO3//
M2=100/148;//multiplication factor of Mg(NO3)2//
M3=100/146;//multiplication factor of Mg(HCO3)2//
M4=100/120//multiplication factor of MgSO4//
M5=100/95;//multiplication factor of MgCl2//
M6=100/136;//multiplication factor of CaSO4//
P1=W1*M1;//in terms of CaCO3//L
P2=W2*M2;//in terms of CaCO3//S 
P3=W3*M3;//in terms of CaCO3//L
P4=W4*M4;//in terms of CaCO3//L+S
P5=W5*M5;//in terms of CaCO3//L+S
P6=W6*M6;//in terms of CaCO3//S
printf ("We do not take Fe2O3 since it does not react with lime/soda");
V=15000;//volume of water in litres//
L=0.74*(P1+P3+P4+P5)*V/Purity_Lime;//lime required in mg//
L=L/10^6;
printf("\nLime required is %.3fkg",L);
S=1.06*(P2+P4+P5+P6)*V/Purity_soda;//soda required in mg//
S=S/10^6;
printf("\nSoda required is %.3fkg",S)