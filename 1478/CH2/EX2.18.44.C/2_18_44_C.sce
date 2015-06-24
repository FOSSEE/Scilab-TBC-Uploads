//water and its treatment//
//example 2.18.44.C//
clc    
Purity_Lime=.90
Purity_soda=.95
W1=81;//amount of Ca(HCO3)2 in ppm//
W2=42;//amount of MgCO3 in ppm//
W3=4.1;//amount of NaAlO2 in ppm//
W4=3.65;//amount of HCl in ppm//
W5=82;//amount of Ca(NO3)2 in ppm//
W6=4.5;//amount of NaCl in ppm//
M1=100/162;//multiplication factor of Ca(HCO3)2//
M2=100/84;//multiplication factor of MgCO3//
M3=100/82;//multiplication factor of NaAlO2//
M4=100/36.5//multiplication factor of HCl//
P1=W1*M1;//in terms of CaCO3//L
P2=W2*M2;//in terms of CaCO3//L 
P3=W3*M3;//in terms of CaCO3//-L-S
P4=W4*M4;//in terms of CaCO3//L+S
printf ("We do not take Ca(NO3)2 and NaCl since they do not react with lime/soda");
V=20000;//volume of water in litres//
L=0.74*(P1+P2*2-P3+P4)*V/Purity_Lime;//lime required in mg//
L=L/10^6;
printf("\nLime required is %.3fkg",L);
S=1.06*(P4-P3)*V/Purity_soda;//soda required in mg//
S=S/10^6;
printf("\nSoda required is %.1fkg",S)