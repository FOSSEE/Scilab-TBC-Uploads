//water and its treatment//
//example 2.18.44//
clc    
Purity_Lime=.85
Purity_soda=.95
W1=49.95;//amount of CaCl2 in ppm//
W2=42;//amount of MgSO4 in ppm//
W3=12.6;//amount of NaHCO3 in ppm//
W4=10;//amount of SiO2 in ppm//
W5=500;//amount of NaCl in ppm//
W6=51.1;//amount of Mg(HCO3)2 in ppm//
W7=3;//amount of CO2 in ppm//
W8=3;//amount of Fe2+ in ppm//
W9=15;//amount of AlCl3 in ppm//
M1=100/111;//multiplication factor of CaCl2//
M2=100/120;//multiplication factor of MgSO4//
M6=100/146;//multiplication factor of Mg(HCO3)2//
M7=100/44.3//multiplication factor of CO2//
M8=100/55;//multiplication factor of Fe2+//
M9=100/133.5//multiplication factor of AlCl3//
P1=W1*M1;//in terms of CaCO3//S
P2=W2*M2;//in terms of CaCO3//L+S 
P6=W6*M6;//in terms of CaCO3//L
P7=W7*M7;//in terms of CaCO3//L
P8=W8*M8;//in terms of CaCO3//L+S
P9=W9*M9;//in terms of CaCO3//L+S
printf ("We do not take NaHCO3, NaCl and Mg(HCO3)2 since they do not react with lime/soda");
V=1000000;//volume of water in litres//
L=0.74*(P2+P6*2+P7+P8+P9)*V/Purity_Lime;//lime required in mg//
L=L/10^6;
printf("\nLime required is %.1fkg",L);
S=1.06*(P1+P2+P8+P9)*V/Purity_soda;//soda required in mg//
S=S/10^6;
printf("\nSoda required is %.1fkg",S)