//water//
//page 1.34 example 5//
clc    
Purity_Lime=1
W1=13.6;//amount of CaSO4 in ppm//
W2=8.4;//amount of MgCO3 in ppm//
W3=05;//amount of CaCO3 in ppm//
M1=100/136;//multiplication factor of CaSO4//
M2=100/84;//multiplication factor of MgCO3//
M3=100/100;//multiplication factor of CaCO3//
P1=W1*M1;//in terms of CaCO3//S
P2=W2*M2;//in terms of CaCO3//2*L
P3=W3*M3;//in terms of CaCO3//L
printf ("We do not take KNO3 since it does not react with lime/soda");
V=5000;//volume of water in litres//
L=0.74*(2*P2+P3)*V/Purity_Lime;//lime required in mg//
L=L/10^3;
printf("\n Amount of Lime required is %.1f g",L);