//water and its treatment//
//example 2.18.44.B//
clc    
Purity_Lime=.85
Purity_soda=.90
W1=16.2;//amount of Ca(HCO3)2 in ppm//
W2=6.8;//amount of CaSO4 in ppm//
W3=11.1;//amount of CaCl2 in ppm//
W4=6;//amount of MgSO4 in ppm//
W5=8.4;//amount of Mg(HCO3)2 in ppm//
W6=8;//amount of SiO2 in ppm//
M1=100/162;//multiplication factor of Ca(HCO3)2//
M2=100/136;//multiplication factor of CaSO4//
M3=100/111;//multiplication factor of CaCl2//
M4=100/120//multiplication factor of MgSO4//
M5=100/146//multiplication factor of Mg(HCO3)2//
P1=W1*M1;//in terms of CaCO3//L
P2=W2*M2;//in terms of CaCO3//L+S 
P3=W3*M3;//in terms of CaCO3//L+S
P4=W4*M4;//in terms of CaCO3//L+S
P5=W5*M5;//in terms of CaCO3//L
printf ("We do not take SiO2 since it does not react with lime/soda");
V=1000000;//volume of water in litres//
L=0.74*(P1+P4+P5*2)*V/Purity_Lime;//lime required in mg//
L=L/10^6;
printf("\nLime required is %.3fkg",L);
S=1.06*(P2+P3+P4)*V/Purity_soda;//soda required in mg//
S=S/10^6;
printf("\nSoda required is %.2fkg",S)