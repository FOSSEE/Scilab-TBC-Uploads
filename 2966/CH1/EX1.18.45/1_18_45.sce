//water//
//page 1.45 example 18//
clc    
Purity_Lime=.9
Purity_soda=.95
W1=81;//amount of Ca(HCO3)2 in ppm//
W2=95;//amount of MgCl2 in ppm//
W3=68;//amount of CaSO4 in ppm//
W4=146;//amount of Mg(HCO3)2 in ppm//
W5=49;//amount of H2SO4 in ppm//
M1=100/162;//multiplication factor of Ca(HCO3)2//
M2=100/95;//multiplication factor of MgCl2//
M3=100/136;//multiplication factor of CaSO4//
M4=100/146;//multiplication factor of Mg(HCO3)2//
M5=100/98;//multiplication factor of H2SO4//
P1=W1*M1;//in terms of CaCO3//L
P2=W2*M2;//in terms of CaCO3//L+S
P3=W3*M3;//in terms of CaCO3//S
P4=W4*M4;//in terms of CaCO3//2*L
P5=W5*M5;//in terms of CaCO3//L+S
printf ("We do not take SiO2 since it does not react with lime/soda");
V=50000;//volume of water in litres//
L=0.74*(P1+P2+2*P4+P5)*V/Purity_Lime;//lime required in mg//
L=L/10^3;
printf("\n Amount of Lime required is %.2f g",L);
S=1.06*(P2+P3+P5)*V/Purity_soda;//soda required in mg//
S=S/10^3;
printf("\n Amount of Soda required is %.2f g",S)