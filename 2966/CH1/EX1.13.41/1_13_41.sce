//water//
//page 1.41 example 13//
clc    
Purity_Lime=.8
Purity_soda=.85
W1=162;//amount of Ca(HCO3)2 in ppm//
W2=7.3;//amount of Mg(HCO3)2 in ppm//
W3=9.5;//amount of MgCl2 in ppm//
W4=36.5;//amount of HCl in ppm//
W5=44;//amount of CO2 in ppm//
W6=111;//amount of CaCl2 in ppm//
W7=60;//amount of MgSO4 in ppm//
M1=100/162;//multiplication factor of Ca(HCO3)2//
M2=100/146;//multiplication factor of Mg(HCO3)2//
M3=100/95;//multiplication factor of MgCl2//
M4=100/73;//multiplication factor of HCl//
M5=100/44;//multiplication factor of CO2//
M6=100/111;//multiplication factor of CaCl2//
M7=100/120;//multiplication factor of MgSO4//
P1=W1*M1;//in terms of CaCO3//L
P2=W2*M2;//in terms of CaCO3//2*L
P3=W3*M3;//in terms of CaCO3//L+S
P4=W4*M4;//in terms of CaCO3//L+S
P5=W5*M5;//in terms of CaCO3//L
P6=W6*M6;//in terms of CaCO3//S
P7=W7*M7;//in terms of CaCO3//L+S
printf ("We do not take NaCl since it does not react with lime/soda");
V=1000000;//volume of water in litres//
L=0.74*(P1+2*P2+P3+P4+P5+P7)*V/Purity_Lime;//lime required in mg//
L=L/10^3;
printf("\n Amount of Lime required is %.f g",L);
S=1.06*(P3+P4+P6+P7)*V/Purity_soda;//soda required in mg//
S=S/10^3;
printf("\n Amount of Soda required is %.f g",S)