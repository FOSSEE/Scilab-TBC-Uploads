//water and its treatment//
//example 2.18.27//
clc    
Purity_Lime=0.90
Purity_soda=0.90
W1=2.1;//amount of CaCO3 in °Clarke//
W2=0.63;//amount of MgCO3 in °Clarke//
W3=0.35;//amount of CaSO4 in °Clarke//
W4=0.21;//amount of MgSO4 in °Clarke//
W5=0.063;//amount of MgCl2 in °Clarke//
W6=0.035;//amount of KCl in °Clarke//
M1=100/(100*0.07);//multiplication factor of CaCO3//
M2=100/(84.04*0.07);//multiplication factor of MgCO3//
M3=100/(136*0.07);//multiplication factor of CaSO4//
M4=100/(120*0.07);//multiplication factor of MgSO4//
M5=100/(95*0.07);//multiplication factor of MgCl2//
P1=W1*M1;//in terms of CaCO3//L
P2=W2*M2;//in terms of CaCO3//L
P3=W3*M3;//in terms of CaCO3//S
P4=W4*M4;//in terms of CaCO3//L+S
P5=W5*M5;//in terms of CaCO3//L+S
printf ("We do not take KCl since it do not react with lime/soda");
V=85000;//volume of water in litres//
L=0.74*(P1+P2*2+P4+P5)*V/Purity_Lime;//lime required in mg//
L=L/10^6;
printf("\nQuantity of Lime required is %.4fkg",L);
S=1.06*(P3+P4+P5)*V/Purity_soda;//soda required in mg//
S=S/10^6;
printf("\nQuantity of Soda required is %.3fkg",S)