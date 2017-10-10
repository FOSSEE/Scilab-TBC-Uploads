//water//
//page 1.87 example 3//
clc    
Purity_Lime=.85
Purity_soda=.95
W1=12.5;//amount of CaCO3 in ppm//
W2=8.4;//amount of MgCO3 in ppm//
W3=22.2;//amount of CaCl2 in ppm//
W4=9.5;//amount of MgCl2 in ppm//
W5=33;//amount of CO2 in ppm//
W6=7.3;//amount of HCl in ppm//
W7=16.8;//amount of NaHCO3 in ppm//
M1=100/100;//multiplication factor of CaCO3//
M2=100/84;//multiplication factor of MgCO3//
M3=100/111;//multiplication factor of CaCl2//
M4=100/95;//multiplication factor of MgCl2//
M5=100/44;//multiplication factor of CO2//
M6=100/73;//multiplication factor of HCl//
M7=100/168;//multiplication factor of NaHCO3//
P1=W1*M1;//in terms of CaCO3//L
P2=W2*M2;//in terms of CaCO3//2*L
P3=W3*M3;//in terms of CaCO3//S
P4=W4*M4;//in terms of CaCO3//L+S
P5=W5*M5;//in terms of CaCO3//L
P6=W6*M6;//in terms of CaCO3//L+S
P7=W7*M7;//in terms of CaCO3//L-S
V=1000000;//volume of water in litres//
L=0.74*(P1+2*P2+P4+P5+P6+P7)*V/Purity_Lime;//lime required in mg//
L=L/10^3;
printf("\n Amount of Lime required is %.f g",L);
S=1.06*(P3+P4+P6-P7)*V/Purity_soda;//soda required in mg//
S=S/10^3;
printf("\n Amount of Soda required is %.f g",S)