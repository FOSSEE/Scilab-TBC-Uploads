//water//
//page 1.37 example 8//
clc    
Purity_Lime=.8
Purity_soda=.9
W1=7.1;//amount of Mg(HCO3)2 in ppm//
W2=8.1;//amount of Ca(HCO3)2 in ppm//
W3=4.195;//amount of MgCO3 in ppm//
W4=10;//amount of CaCO3 in ppm//
M1=100/146;//multiplication factor of Mg(HCO3)2//
M2=100/162;//multiplication factor of Ca(HCO3)2//
M3=100/84;//multiplication factor of MgCO3//
M4=100/100;//multiplication factor of CaCO3//
P1=W1*M1;//in terms of CaCO3//2*L
P2=W2*M2;//in terms of CaCO3//L
P3=W3*M3;//in terms of CaCO3//2*L
P4=W4*M4;//in terms of CaCO3//L
V=100000;//volume of water in litres//
L=0.74*(2*P1+P2+2*P3+P4)*V/Purity_Lime;//lime required in mg//
L=L/10^3;
printf("\n Amount of Lime required is %.f g",L);
S=1.06*(0)*V/Purity_soda;//soda required in mg//
S=S/10^3;
printf("\n Amount of Soda required is %.f g",S)