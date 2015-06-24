//water and its treatment//
//example 2.18.44.A//
clc    
Purity_Lime=.90
Purity_soda=.90
W1=146;//amount of Mg(HCO3)2 in ppm//
W2=81;//amount of Ca(HCO3)2 in ppm//
W3=15;//amount of Na2SO4 in ppm//
W4=95;//amount of MgCl2 in ppm//
W5=111;//amount of CaCl2 in ppm//
W6=10;//amount of SiO2 in ppm//
M1=100/146;//multiplication factor of Mg(HCO3)2//
M2=100/162.7;//multiplication factor of Ca(HCO3)2//
M4=100/95.07;//multiplication factor of MgCl2//
M5=100/111//multiplication factor of CaCl2//
P1=W1*M1;//in terms of CaCO3//L
P2=W2*M2;//in terms of CaCO3//L 
P4=W4*M4;//in terms of CaCO3//L+S
P5=W5*M5;//in terms of CaCO3//L+S
printf ("We do not take Na2SO4 and SiO2 since they do not react with lime/soda");
V=100000;//volume of water in litres//
L=0.74*(P1+P2*2+P4+P5)*V/Purity_Lime;//lime required in mg//
L=L/10^6;
printf("\nLime required is %.1fkg",L);
S=1.06*(P4+P5)*V/Purity_soda;//soda required in mg//
S=S/10^6;
printf("\nSoda required is %.2fkg",S)