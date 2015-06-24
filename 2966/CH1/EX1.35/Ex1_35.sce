//water//
//page 1.46 example 19//
clc    
Purity_Lime=.95
Purity_soda=.9
W1=81;//amount of Ca(HCO3)2 in ppm//
W2=73;//amount of Mg(HCO3)2 in ppm//
W3=68;//amount of CaSO4 in ppm//
W4=95;//amount of MgCl2 in ppm//
W5=14.8;//amount of Mg(NO3)2 in ppm//
W6=14.7;//amount of H2SO4 in ppm//
M1=100/162;//multiplication factor of Ca(HCO3)2//
M2=100/146;//multiplication factor of Mg(HCO3)2//
M3=100/136;//multiplication factor of CaSO4//
M4=100/95;//multiplication factor of MgCl2//
M5=100/148;//multiplication factor of Mg(NO3)2//
M6=100/98;//multiplication factor of H2SO4//
P1=W1*M1;//in terms of CaCO3//L
P2=W2*M2;//in terms of CaCO3//2*L
P3=W3*M3;//in terms of CaCO3//S
P4=W4*M4;//in terms of CaCO3//L+S
P5=W5*M5;//in terms of CaCO3//L+S
P6=W6*M6;//in terms of CaCO3//L+S
V=1000000;//volume of water in litres//
L=0.74*(P1+2*P2+P4+P5+P6)*V/Purity_Lime;//lime required in mg//
L=L/10^3;
printf("\n Amount of Lime required is %.1f g",L);
S=1.06*(P3+P4+P5+P6)*V/Purity_soda;//soda required in mg//
S=S/10^3;
printf("\n Amount of Soda required is %.1f g",S);