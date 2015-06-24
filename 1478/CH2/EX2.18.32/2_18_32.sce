//water and its treatment//
//example 2.18.32//
clc    
Purity_Lime=.97
Purity_soda=.91
W1=24;//amount of Mg2+ in ppm//
W2=20;//amount of Ca2+ in ppm//
W3=30;//amount of CO2 in ppm//
W4=150;//amount of HCO3- in ppm//
W5=40;//amount of K+ in ppm//
M1=100/24;//multiplication factor of Mg2+//
M2=100/40;//multiplication factor of Ca2+//
M3=100/44;//multiplication factor of CO2//
M4=100/(61*2);//multiplication factor of HCO3-//
P1=W1*M1;//in terms of CaCO3//L+S
P2=W2*M2;//in terms of CaCO3//S
P3=W3*M3;//in terms of CaCO3//L
P4=W4*M4;//in terms of CaCO3//+L and -S
printf ("We do not take K+ since it does not react with lime/soda");
V=1000000;//volume of water in litres//
L=0.74*(P1+P3+P4)*V/Purity_Lime;//lime required in mg//
L=L/10^6;
printf("\nLime required is %.0fkg",L);
S=1.06*(P1+P2-P4)*V/Purity_soda;//soda required in mg//
S=S/10^6;
printf("\nSoda required is %.1fkg",S)