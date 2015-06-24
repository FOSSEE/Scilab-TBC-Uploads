//water and its treatment//
//example 2.18.24//
clc
W1=50;//amount of CaCO3 in ppm//
W2=14.4;//amount of MgCO3 in ppm//
W3=22.2;//amount of CaCl2 in ppm//
W4=9.5;//amount of MgCl2 in ppm//
W5=20;//amount of Fe2O3 in ppm//
W6=20;//amount of Na2SO4 in ppm//
W7=5;//amount of SiO2 in ppm//
W8=2.2;//amount of CO2 in ppm//
M1=100/100;//multiplication factor of CaCO3//
M2=100/84;//multiplication factor of MgCO3//
M3=100/111;//multiplication factor of CaCl2//
M4=100/95;//multiplication factor of MgCl2//
M8=100/44.05;//multiplication factor of CO2//
P1=W1*M1;//in terms of CaCO3//L
P2=W2*M2;//in terms of CaCO3//L 
P3=W3*M3;//in terms of CaCO3//S
P4=W4*M4;//in terms of CaCO3//L+S
P8=W8*M8;//in terms of CaCO3//L
printf ("We do not take Fe2O3, Na2SO4 and SiO2 since they do not react with lime/soda");
V=75000;//volume of water in litres//
L=0.74*(P1+P2*2+P4+P8)*V;//lime required in mg//
L=L/10^6;
printf("\nLime required is %.5fkg",L);
S=1.06*(P3+P4)*V;//soda required in mg//
S=S/10^6;
printf("\nSoda required is %.3fkg",S)