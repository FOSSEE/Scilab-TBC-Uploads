//water and its treatment//
//example 2.18.23//
clc    
Purity_Lime=.85
Purity_soda=.90
W1=27.2;//amount of CaSO4 in ppm//
W2=24;//amount of MgSO4 in ppm//
W3=11.1;//amount of CaCl2 in ppm//
W4=47.5;//amount of MgCl2 in ppm//
W5=2.195;//amount of CO2 in ppm//
W6=1.825;//amount of HCl in ppm//
W7=13.35;//amount of AlCl3 in ppm//
M1=100/136;//multiplication factor of CaSO4//
M2=100/120;//multiplication factor of MgSO4//
M3=100/111;//multiplication factor of CaCl2//
M4=100/95;//multiplication factor of MgCl2//
M5=100/44;//multiplication factor of CO2//
M6=100/(36.5*2);//multiplication factor of HCl//
M7=100/133.5;//multiplication factor of AlCl3//
P1=W1*M1;//in terms of CaCO3//S
P2=W2*M2;//in terms of CaCO3//L+S
P3=W3*M3;//in terms of CaCO3//S
P4=W4*M4;//in terms of CaCO3//L+S 
P5=W5*M5;//in terms of CaCO3//L
P6=W6*M6;//in terms of CaCO3//L+S
P7=W7*M7;//in terms of CaCO3//L+S
V=100000;//volume of water in litres//
L=0.74*(P2+P4+P5+P6+P7)*V/Purity_Lime;//lime required in mg//
L=L/10^6;
printf("Lime required is %.3fkg",L);
S=1.06*(P1+P2+P3+P4+P6+P7)*V/Purity_soda;//soda required in mg//
S=S/10^6;
printf("\n Soda required is %.2fkg",S)