//water and its treatment//
//example 2.18.40//
clc    
Purity_Lime=.74
Purity_soda=.90
W1=73;//amount of Mg(HCO3)2 in ppm//
W2=120;//amount of MgSO4 in ppm//
W3=22.2;//amount of CaCl2 in ppm//
W4=164;//amount of Ca(NO3)3 in ppm//
W5=15;//amount of SiO2 in ppm//
M1=100/146;//multiplication factor of Mg(HCO3)2//
M2=100/120;//multiplication factor of MgSO4//
M3=100/111;//multiplication factor of CaCl2//
M4=100/164//multiplication factor of Ca(NO3)2//
P1=W1*M1;//in terms of CaCO3//L
P2=W2*M2;//in terms of CaCO3//L+S 
P3=W3*M3;//in terms of CaCO3//S
P4=W4*M4;//in terms of CaCO3//S
printf ("We do not take SiO2 since it does not react with lime/soda");
V=5000;//volume of water in litres//
L=0.74*(P1*2+P2)*V/Purity_Lime;//lime required in mg//
L=L/10^6;
printf("\nLime required is %.0fkg",L);
S=1.06*(P2+P3+P4)*V/Purity_soda;//soda required in mg//
S=S/10^6;
printf("\nSoda required is %.1fkg",S)