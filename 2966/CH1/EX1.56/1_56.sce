//water//
//page 1.85 example 2//
clc    
Purity_Lime=.7
Purity_soda=.85
W1=30.2;//amount of Ca(HCO3)2 in ppm//
W2=20.8;//amount of Mg(HCO3)2 in ppm//
W3=28.31;//amount of CaCl2 in ppm//
W4=8.7;//amount of MgCl2 in ppm//
W5=35;//amount of CaSO4 in ppm//
W6=6.7;//amount of MgSO4 in ppm//
M1=100/162;//multiplication factor of Ca(HCO3)2//
M2=100/146;//multiplication factor of Mg(HCO3)2//
M3=100/111;//multiplication factor of CaCl2//
M4=100/95;//multiplication factor of MgCl2//
M5=100/136;//multiplication factor of CaSO4//
M6=100/120;//multiplication factor of MgSO4//
P1=W1*M1;//in terms of CaCO3//L
P2=W2*M2;//in terms of CaCO3//2*L
P3=W3*M3;//in terms of CaCO3//S
P4=W4*M4;//in terms of CaCO3//L+S
P5=W5*M5;//in terms of CaCO3//S
P6=W6*M6;//in terms of CaCO3//L+S
printf ("We do not take Na2SO4 since it does not react with lime/soda");
V=100000;//volume of water in litres//
L=0.74*(P1+2*P2+P4+P6)*V/Purity_Lime;//lime required in mg//
L=L/10^3;
printf("\n Amount of Lime required is %.1f g",L);
S=1.06*(P3+P4+P5+P6)*V/Purity_soda;//soda required in mg//
S=S/10^3;
printf("\n Amount of Soda required is %.f g",S)