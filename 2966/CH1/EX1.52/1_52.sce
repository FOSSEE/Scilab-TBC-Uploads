//water//
//page 1.84 example 3//
clc    
Purity_Lime=.9
Purity_soda=.95
W1=81;//amount of Ca(HCO3)2 in ppm//
W2=42;//amount of MgCO3 in ppm//
W3=4.1;//amount of NaAlO2 in ppm//
W4=3.65;//amount of HCl in ppm//
W5=82;//amount of Ca(NO3)2 in ppm//
M1=100/162;//multiplication factor of Ca(HCO3)2//
M2=100/84;//multiplication factor of MgCO3//
M3=100/82;//multiplication factor of NaAlO2//
M4=100/36.5;//multiplication factor of HCl//
M5=100/164;//multiplication factor of Ca(NO3)2//
P1=W1*M1;//in terms of CaCO3//L
P2=W2*M2;//in terms of CaCO3//2*L
P3=W3*M3;//in terms of CaCO3//-L
P4=W4*M4;//in terms of CaCO3//L+S
P5=W5*M5;//in terms of CaCO3//S
printf ("We do not take NaCl since it does not react with lime/soda");
V=20000;//volume of water in litres//
L=0.74*(P1+2*P2+P4-P3)*V/Purity_Lime;//lime required in mg//
L=L/10^3;
printf("\n Amount of Lime required is %.2f g",L);
S=1.06*(P4+P5)*V/Purity_soda;//soda required in mg//
S=S/10^3;
printf("\n Amount of Soda required is %.3f g",S)