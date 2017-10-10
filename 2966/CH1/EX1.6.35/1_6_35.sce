//water//
//page 1.35 example 6//
clc    
Purity_soda=1
W1=5;//amount of CaCO3 in ppm//
W2=22.2;//amount of CaCl2 in ppm//
W3=2;//amount of MgSO4 in ppm//
M1=100/100;//multiplication factor of CaCO3//
M2=100/111;//multiplication factor of CaCl2//
M3=100/120;//multiplication factor of MgSO4//
P1=W1*M1;//in terms of CaCO3//L
P2=W2*M2;//in terms of CaCO3//S
P3=W3*M3;//in terms of CaCO3//L+S
printf ("We do not take Na2SO4 and SiO2 since they do not react with lime/soda");
V=10000;//volume of water in litres//
S=1.06*(P2+P3)*V/Purity_soda;//soda required in mg//
S=S/10^3;
printf("\n Amount of Soda required is %.1f g",S)