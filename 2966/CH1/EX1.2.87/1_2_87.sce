//water//
//page 1.87 example 2//
clc    
Purity_Lime=1
Purity_soda=1
W1=222;//amount of CaCl2 in ppm//
W2=296;//amount of Mg(NO3)2 in ppm//
W3=324;//amount of Ca(HCO3)2 in ppm//
W4=196;//amount of H2SO4 in ppm//
M1=100/111;//multiplication factor of CaCl2//
M2=100/148;//multiplication factor of Ca(HCO3)2//
M3=100/162;//multiplication factor of MgCO3//
M4=100/98;//multiplication factor of H2SO4//
P1=W1*M1;//in terms of CaCO3//S
P2=W2*M2;//in terms of CaCO3//L+S
P3=W3*M3;//in terms of CaCO3//L
P4=W4*M4;//in terms of CaCO3//L+S
printf ("We do not take organic matter since it does not react with lime/soda");
V=50000;//volume of water in litres//
L=0.74*(P2+P3+P4)*V/Purity_Lime;//lime required in mg//
L=L/10^3;
printf("\n Amount of Lime required is %.f g",L);
S=1.06*(P1+P2+P4)*V/Purity_soda;//soda required in mg//
S=S/10^3;
printf("\n Amount of Soda required is %.f g",S)