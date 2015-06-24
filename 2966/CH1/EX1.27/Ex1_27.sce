//water//
//page 1.39 example 11//
clc    
Purity_Lime=.85
Purity_soda=.9
W1=16.2;//amount of Ca(HCO3)2 in ppm//
W2=6.8;//amount of CaSO4 in ppm//
W3=11.1;//amount of CaCl2 in ppm//
W4=6;//amount of MgSO4 in ppm//
W5=8.4;//amount of Mg(HCO3)2 in ppm//
M1=100/162;//multiplication factor of Ca(HCO3)2//
M2=100/136;//multiplication factor of CaSO4//
M3=100/111;//multiplication factor of CaCl2//
M4=100/120;//multiplication factor of MgSO4//
M5=100/146;//multiplication factor of Mg(HCO3)2//
P1=W1*M1;//in terms of CaCO3//L
P2=W2*M2;//in terms of CaCO3//S
P3=W3*M3;//in terms of CaCO3//S
P4=W4*M4;//in terms of CaCO3//L+S
P5=W5*M5;//in terms of CaCO3//2*L
printf ("We do not take NaCl since it does not react with lime/soda");
V=10000;//volume of water in litres//
L=0.74*(P1+P4+2*P5)*V/Purity_Lime;//lime required in mg//
L=L/10^3;
printf("\n Amount of Lime required is %.1f g",L);
S=1.06*(P2+P3+P4)*V/Purity_soda;//soda required in mg//
S=S/10^3;
printf("\n Amount of Soda required is %.2f g",S)