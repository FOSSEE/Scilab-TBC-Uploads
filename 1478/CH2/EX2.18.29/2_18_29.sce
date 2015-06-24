//water and its treatment//
//example 2.18.29//
clc    
Purity_Lime=0.85
Purity_soda=0.95
W1=3.5;//amount of CaCO3 in ppm//
W2=6.8;//amount of CaSO4 in ppm//
W3=8.4;//amount of MgCO3 in ppm//
W4=5.7;//amount of MgCl2 in ppm//
W5=6.0;//amount of MgSO4 in ppm//
W6=3.0;//amount of SiO2 in ppm//
W7=11.7;//amount of NaCl in ppm//
M1=100/100;//multiplication factor of CaCO3//
M2=100/135.86;//multiplication factor of CaSO4//
M3=100/84;//multiplication factor of MgCO3//
M4=100/95.1;//multiplication factor of MgCl2//
M5=100/120;//multiplication factor of MgSO4//
P1=W1*M1;//in terms of CaCO3//L
P2=W2*M2;//in terms of CaCO3//S
P3=W3*M3;//in terms of CaCO3//L
P4=W4*M4;//in terms of CaCO3//L+S
P5=W5*M5;//in terms of CaCO3//L+S
printf ("We do not take SiO2 and NaCl since they do not react with lime/soda");
V=35000;//volume of water in litres//
L=0.74*(P1+P3*2+P4+P5)*V/Purity_Lime;//lime required in mg//
L=L/10^6;
printf("\nQuantity of Lime required in month of Feb 2000 is %.2fkg",L*29);
S=1.06*(P2+P4+P5)*V/Purity_soda;//soda required in mg//
S=S/10^6;
printf("\nQuantity of Soda required in month of Feb 2000 is %.4fkg",S*29)