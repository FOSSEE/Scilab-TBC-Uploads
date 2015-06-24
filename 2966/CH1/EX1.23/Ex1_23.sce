//water//
//page 1.36 example 7//
clc    
Purity_Lime=1
Purity_soda=1
W1=10;//amount of CaCO3 in ppm//
W2=36.5;//amount of Mg(HCO3)2 in ppm//
W3=19;//amount of MgCl2 in ppm//
M1=100/100;//multiplication factor of CaCO3//
M2=100/146;//multiplication factor of Mg(HCO3)2//
M3=100/95;//multiplication factor of MgCl2//
P1=W1*M1;//in terms of CaCO3//L
P2=W2*M2;//in terms of CaCO3//2*L
P3=W3*M3;//in terms of CaCO3//L+S
printf ("We do not take SiO2 since it does not react with lime/soda");
V=1000000;//volume of water in litres//
L=0.74*(P1+2*P2+P3)*V/Purity_Lime;//lime required in mg//
L=L/10^3;
printf("\n Amount of Lime required is %.f g",L);
S=1.06*(P3)*V/Purity_soda;//soda required in mg//
S=S/10^3;
printf("\n Amount of Soda required is %.f g",S)