//water//
//page 1.31 example 1//
clc    
Purity_Lime=.90
Purity_soda=1
W1=136;//amount of CaSO4 in ppm//
W2=49;//amount of H2SO4 in ppm//
W3=95;//amount of MgCl2 in ppm//
W4=60;//amount of MgSO4 in ppm//
M1=100/136;//multiplication factor of CaSO4//
M2=100/98;//multiplication factor of H2SO4//
M3=100/95;//multiplication factor of MgCl2//
M4=100/120;//multiplication factor of MgSO4//
P1=W1*M1;//in terms of CaCO3//S
P2=W2*M2;//in terms of CaCO3//L+S
P3=W3*M3;//in terms of CaCO3//L+S
P4=W4*M4;//in terms of CaCO3//L+S
printf ("We do not take SiO2 since it does not react with lime/soda");
V=1000000;//volume of water in litres//
L=0.74*(P2+P3+P4)*V/Purity_Lime;//lime required in mg//
L=L/10^3;
printf("\n Amount of Lime required is %.f g",L);
S=1.06*(P1+P2+P3+P4)*V/Purity_soda;//soda required in mg//
S=S/10^3;
printf("\n Amount of Soda required is %.f g",S)