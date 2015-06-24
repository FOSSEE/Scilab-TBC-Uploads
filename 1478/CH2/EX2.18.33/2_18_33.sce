//water and its treatment//
//example 2.18.33//
clc    
Purity_Lime=.80
Purity_soda=.85
W1=162;//amount of Ca(HCO3)2 in ppm//
W2=9.5;//amount of MgCl2 in ppm//
W3=58.5;//amount of  NaCl in ppm//
W4=7.3;//amount of Mg(HCO3)2 in ppm//
W5=36.5;//amount of HCl in ppm//
W6=44;//amount of CO2 in ppm//
W7=111;//amount of CaCl2 in ppm//
W8=60;//amount of MgSO4 in ppm//
M1=100/162;//multiplication factor of Ca(HCO3)2//
M2=100/95;//multiplication factor of MgCl2//
M4=100/146;//multiplication factor of Mg(HCO3)2//
M5=100/(2*36.5);//multiplication factor of HCl//
M6=100/44;//multiplication factor of CO2//
M7=100/111;//multiplication factor of CaCl2//
M8=100/120;//multiplication factor of MgSO4//
P1=W1*M1;//in terms of CaCO3//L
P2=W2*M2;//in terms of CaCO3//L+S 
P4=W4*M4;//in terms of CaCO3//L
P5=W5*M5;//in terms of CaCO3//L+S
P6=W6*M6;//in terms of CaCO3//L
P7=W7*M7;//in terms of CaCO3//S
P8=W8*M8;//in terms of CaCO3//L+S
printf ("We do not take NaCl since they do not react with lime/soda");
V=1000000;//volume of water in litres//
L=0.74*(P1+P2+P4*2+P5+P6+P8)*V/Purity_Lime;//lime required in mg//
L=L/10^6;
printf("\nLime required is %.0fkg",L);
S=1.06*(P2+P5+P7+P8)*V/Purity_soda;//soda required in mg//
S=S/10^6;
printf("\nSoda required is %.3fkg",S)
