//water and its treatment//
//example 2.18.35//
clc    
Purity_Lime=.95
Purity_soda=.80
W1=14.6;//amount of Mg(HCO3)2 in ppm//
W2=6.8;//amount of CaSO4 in ppm//
W3=8.1;//amount of Ca(HCO3)2 in ppm//
W4=12;//amount of MgSO4 in ppm//
W5=15;//amount of Na2SO4 in ppm//
W6=2;//amount of SiO2 in ppm//
M1=100/146;//multiplication factor of Ca2+//
M2=100/157;//multiplication factor of Mg2+//
M3=100/162.08;//multiplication factor of H2SO4//
M4=100/120;//multiplication factor of CO2//
P1=W1*M1;//in terms of CaCO3//L
P2=W2*M2;//in terms of CaCO3//S 
P3=W3*M3;//in terms of CaCO3//L
P4=W4*M4;//in terms of CaCO3//L+S
printf ("We do not take Na2SO4 and SiO2 since they do not react with lime/soda");
V=50000;//volume of water in litres//
L=0.74*(P1*2+P3+P4)*V/Purity_Lime;//lime required in mg//
L=L/10^6;
printf("\nQuantity of Lime required is %.4fkg",L);
S=1.06*(P2+P4)*V/Purity_soda;//soda required in mg//
S=S/10^6;
printf("\nQuantity of Soda required is %.1fkg",S)