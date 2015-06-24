//water and its treatment//
//example 2.18.28//
clc    
Purity_Lime=.89
Purity_soda=.95
W1=14.6;//amount of HCl in ppm//
W2=34.2;//amount of Al2(SO4)3 in ppm//
W3=9.5;//amount of MgCl2 in ppm//
W4=30;//amount of KCl in ppm//
M1=100/(2*36.5);//multiplication factor of HCl//
M2=(3*100)/342.3;//multiplication factor of Al2(SO4)3//
M3=100/95;//multiplication factor of MgCl2//
P1=W1*M1;//in terms of CaCO3//L+S
P2=W2*M2;//in terms of CaCO3//L+S
P3=W3*M3;//in terms of CaCO3//L+S
printf ("We do not take KCl since it does not react with lime/soda");
V=20000;//volume of water in litres//
L=0.74*(P1+P2+P3)*V/Purity_Lime;//lime required in mg//
L=L/10^6;
printf("\nQuantity of Lime required is %.3fkg",L);
S=1.06*(P1+P2+P3)*V/Purity_soda;//soda required in mg//
S=S/10^6;
printf("\nQuantity of Soda required is %.3fkg",S)