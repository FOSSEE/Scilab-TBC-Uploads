//water and its treatment//
//example 2.18.30//
clc    
Purity_Lime=0.95
Purity_soda=0.90
W1=9.5;//amount of MgCl2 in ppm//
W2=272;//amount of CaSO4 in ppm//
W3=120;//amount of MgSO4 in ppm//
W4=49;//amount of H2SO4 in ppm//
W5=8;//amount of SiO2 in ppm//
M1=100/95;//multiplication factor of MgCl2//
M2=100/136;//multiplication factor of CaSO4//
M3=100/120;//multiplication factor of MgSO4//
M4=100/98;//multiplication factor of H2SO4//
P1=W1*M1;//in terms of CaCO3//L+S
P2=W2*M2;//in terms of CaCO3//S
P3=W3*M3;//in terms of CaCO3//L+S
P4=W4*M4;//in terms of CaCO3//L+S
printf ("We do not take SiO2 since it does not react with lime/soda");
V=1000000;//volume of water in litres//
L=0.74*(P1+P3+P4)*V/Purity_Lime;//lime required in mg//
L=L/10^6;
printf("\nQuantity of Lime required is %.2fkg",L);
S=1.06*(P1+P2+P3+P4)*V/Purity_soda;//soda required in mg//
S=S/10^6;
printf("\nQuantity of Soda required is %.0fkg",S)