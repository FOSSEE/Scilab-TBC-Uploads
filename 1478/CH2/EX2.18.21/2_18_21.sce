//water and its treatment//
//example 2.18.21//
clc    
Purity_Lime=.85
Purity_soda=.95
W1=55.5;//amount of CaCl2 in ppm//
W2=20;//amount of SiO2 in ppm//
W3=12.6;//amount of  NaHCO3 in ppm//
W4=250;//amount of KCl in ppm//
W5=48;//amount of MgSO4 in ppm//
W6=2.2;//amount of CO2 in ppm//
W7=43.8;//amount of Mg(HCO3)2 in ppm//
W8=2;//amount of Fe++ in ppm//
W9=10;//amount of AlCl3 in ppm//
M1=100/111;//multiplication factor of CaCl2//
M3=100/(84*2);//multiplication factor of NaHCO3//
M5=100/120;//multiplication factor of MgSO4//
M6=100/44;//multiplication factor of CO2//
M7=100/146;//multiplication factor of Mg(HCO3)2//
M8=100/55.8;//multiplication factor of Fe++//
M9=100/133.42;//multiplication factor of AlCl3//
P1=W1*M1;//in terms of CaCO3//L
P3=W3*M3;//in terms of CaCO3//+L and -S 
P5=W5*M5;//in terms of CaCO3//L+S
P6=W6*M6;//in terms of CaCO3//L
P7=W7*M7;//in terms of CaCO3//L
P8=W8*M8;//in terms of CaCO3//L+S
P9=W9*M9;//in terms of CaCO3//L+S
printf ("We do not take SiO2 and KCl since they do not react with lime/soda");
V=50000;//volume of water in litres//
L=0.74*(P3+P5+P6+P7*2+P8+P9)*V/Purity_Lime;//lime required in mg//
L=L/10^6;
printf("\nLime required is %.3fkg",L);
S=1.06*(P1-P3+P5+P8+P9)*V/Purity_soda;//soda required in mg//
S=S/10^6;
printf("\nSoda required is %.4fkg",S)
