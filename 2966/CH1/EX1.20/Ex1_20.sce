//water//
//page 1.33 example 4//
clc    
Purity_Lime=1
Purity_soda=1
W1=144;//amount of MgCO3 in ppm//
W2=95;//amount of MgCl2 in ppm//
W3=25;//amount of CaCO3 in ppm//
W4=111;//amount of CaCl2 in ppm//
M1=100/84;//multiplication factor of MgCO3//
M2=100/95;//multiplication factor of MgCl2//
M3=100/100;//multiplication factor of CaCO3//
M4=100/111;//multiplication factor of CaCl2//
P1=W1*M1;//in terms of CaCO3//2*L
P2=W2*M2;//in terms of CaCO3//L+S
P3=W3*M3;//in terms of CaCO3//L
P4=W4*M4;//in terms of CaCO3//S
printf ("We do not take Fe2O3 and Na2SO4 since they do not react with lime/soda");
V=50000;//volume of water in litres//
L=0.74*(2*P1+P2+P3)*V/Purity_Lime;//lime required in mg//
L=L/10^3;
printf("\n Amount of Lime required is %.2f g",L);
S=1.06*(P2+P4)*V/Purity_soda;//soda required in mg//
S=S/10^3;
printf("\n Amount of Soda required is %.f g",S)