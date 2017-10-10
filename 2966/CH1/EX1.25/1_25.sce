//water//
//page 1.38 example 9//
clc    
Purity_Lime=.9
Purity_soda=.9
W1=19;//amount of MgCl2 in ppm//
W2=27.2;//amount of CaSO4 in ppm//
W3=4.9;//amount of H2SO4 in ppm//
W4=6;//amount of AL3+ in ppm//
M1=100/95;//multiplication factor of MgCl2//
M2=100/136;//multiplication factor of CaSO4//
M3=100/49;//multiplication factor of H2SO4//
M4=100/18.0018;//multiplication factor of AL3+//
P1=W1*M1;//in terms of CaCO3//L+S
P2=W2*M2;//in terms of CaCO3//S
P3=W3*M3;//in terms of CaCO3//L+S
P4=W4*M4;//in terms of CaCO3//L+S
V=500000;//volume of water in litres//
L=0.74*(P1+P3+P4)*V/Purity_Lime;//lime required in mg//
L=L/10^3;
printf("\n Amount of Lime required is %.2f g",L);
S=1.06*(P1+P2+P3+P4)*V/Purity_soda;//soda required in mg//
S=S/10^3;
printf("\n Amount of Soda required is %.f g",S)