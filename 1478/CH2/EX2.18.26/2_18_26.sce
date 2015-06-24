//water and its treatment//
//example 2.18.26//
clc    
Purity_Lime=.89
Purity_soda=.92
W1=30;//amount of CaCO3 in ppm//
W2=90;//amount of MgCO3 in ppm//
W3=160;//amount of MgCl2 in ppm//
W4=35;//amount of MgSO4 in ppm//
W5=25;//amount of CaSO4 in ppm//
W6=120;//amount of NaCl in ppm//
M1=100/100;//multiplication factor of CaCO3//
M2=100/84.01;//multiplication factor of MgCO3//
M3=100/95;//multiplication factor of MgCl2//
M4=100/120;//multiplication factor of MgSO4//
M5=100/135.9;//multiplication factor of CaSO4//
P1=W1*M1;//in terms of CaCO3//L
P2=W2*M2;//in terms of CaCO3//L
P3=W3*M3;//in terms of CaCO3//L+S
P4=W4*M4;//in terms of CaCO3//L+S
P5=W5*M5;//in terms of CaCO3//S
printf ("We do not take NaCl since it does not react with lime/soda");
V=40000;//volume of water in litres//
L=0.74*(P1+P2*2+P3+P4)*V/Purity_Lime;//lime required in mg//
L=L/10^6;
printf("\nQuantity of Lime required is %.3fkg",L);
S=1.06*(P3+P4+P5)*V/Purity_soda;//soda required in mg//
S=S/10^6;
printf("\nQuantity of Soda required is %.3fkg",S)