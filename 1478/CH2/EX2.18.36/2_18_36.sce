//water and its treatment//
//example 2.18.36//
clc    
Purity_Lime=.86
Purity_soda=.90
W1=35.2;//amount of CaCO3 in ppm//
W2=7.8;//amount of MgCl2 in ppm//
W3=12.5;//amount of HCl in ppm//
W4=33.3;//amount of Al2(SO4)3 in ppm//
W5=8.8;//amount of Na2SO4 in ppm//
W6=18.6;//amount of Fe2O3 in ppm//
M1=100/99.976;//multiplication factor of CaCO3//
M2=100/94.08;//multiplication factor of MgCl2//
M3=100/73;//multiplication factor of HCl//
M4=100/114//multiplication factor of Al2(SO4)3//
P1=W1*M1;//in terms of CaCO3//L
P2=W2*M2;//in terms of CaCO3//L+S 
P3=W3*M3;//in terms of CaCO3//L+S
P4=W4*M4;//in terms of CaCO3//L+S
printf ("We do not take Na2SO4 and Fe2O3 since they do not react with lime/soda");
V=25000;//volume of water in litres//
L=0.74*(P1+P2+P3+P4)*V/Purity_Lime;//lime required in mg//
L=L/10^6;
printf("\nQuantity of Lime required is %.6fkg",L);
S=1.06*(P2+P3+P4)*V/Purity_soda;//soda required in mg//
S=S/10^6;
printf("\nQuantity of Soda required is %.4fkg",S)