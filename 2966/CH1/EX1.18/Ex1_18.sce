//water//
//page 1.31 example 2//
clc    
Purity_Lime=.90
Purity_soda=.95
W1=156;//amount of Mg(HCO3)2 in ppm//
W2=4.9;//amount of H2SO4 in ppm//
W3=23.75;//amount of MgCl2 in ppm//
W4=5.6;//amount of NaCl in ppm//
W5=111;//amount of CaCl2 in ppm//
W6=16.2;//amount of SiO2 in ppm//
M1=100/146;//multiplication factor of Mg(HCO3)2//
M2=100/98;//multiplication factor of H2SO4//
M3=100/95;//multiplication factor of MgCl2//
M5=100/111;//multiplication factor of CaCl2//
P1=W1*M1;//in terms of CaCO3//2*L
P2=W2*M2;//in terms of CaCO3//L+S
P3=W3*M3;//in terms of CaCO3//L+S
P5=W5*M5;//in terms of CaCO3//S
printf ("We do not take NaCl and SiO2 since they do not react with lime/soda");
V=50000;//volume of water in litres//
L=0.74*(2*P1+P2+P3)*V/Purity_Lime;//lime required in mg//
L=L/10^3;
printf("\n Amount of Lime required is %.2f g",L);
S=1.06*(P2+P3+P5)*V/Purity_soda;//soda required in mg//
S=S/10^3;
printf("\n Amount of Soda required is %.2f g",S)