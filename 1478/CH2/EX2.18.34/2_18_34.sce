//water and its treatment//
//example 2.18.34//
clc    
Purity_Lime=.90
Purity_soda=.90
W1=30;//amount of Ca2+ in ppm//
W2=21.6;//amount of Mg2+ in ppm//
W3=4.9;//amount of H2SO4 in ppm//
W4=4.4;//amount of CO2 in ppm//
W5=12.2;//amount of HCO3- in ppm//
W6=15.4;//amount of Fe2O3 in ppm//
M1=100/40;//multiplication factor of Ca2+//
M2=100/24;//multiplication factor of Mg2+//
M3=100/98;//multiplication factor of H2SO4//
M4=100/44.01;//multiplication factor of CO2//
M5=100/122;//multiplication factor of HCO3-//
P1=W1*M1;//in terms of CaCO3//S
P2=W2*M2;//in terms of CaCO3//L+S 
P3=W3*M3;//in terms of CaCO3//L+S
P4=W4*M4;//in terms of CaCO3//L
P5=W5*M5;//in terms of CaCO3//+L and -S
printf ("We do not take Fe2O3 since it does not react with lime/soda");
V=25000;//volume of water in litres//
L=0.74*(P2+P3+P4+P5)*V/Purity_Lime;//lime required in mg//
L=L/10^6;
printf("\nQuantity of Lime required is %.4fkg",L);
S=1.06*(P1+P2+P3-P5)*V/Purity_soda;//soda required in mg//
S=S/10^6;
printf("\nQuantity of Soda required is %.4fkg",S)