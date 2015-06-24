//water and its treatment//
//example 2.18.42//
clc    
W1=10;//amount of CaCO3 in ppm//
W2=14.6;//amount of Mg(HCO3)2 in ppm//
W3=4.4;//amount of CO2 in ppm//
W4=22.2;//amount of CaCl2 in ppm//
W5=9.5;//amount of MgCl2 in ppm//
W6=2.8;//amount of SiO2 in ppm//
M1=100/100;//multiplication factor of CaCO3//
M2=100/146;//multiplication factor of Mg(HCO3)2//
M3=100/44;//multiplication factor of CO2//
M4=100/111//multiplication factor of CaCl2//
M5=100/95;//multiplication factor of MgCl2/
P1=W1*M1;//in terms of CaCO3//L
P2=W2*M2;//in terms of CaCO3//L 
P3=W3*M3;//in terms of CaCO3//L
P4=W4*M4;//in terms of CaCO3//S
P5=W5*M5;//in terms of CaCO3//L+S
printf ("We do not take SiO2 since it does not react with lime/soda");
V=50000;//volume of water in litres//
L=0.74*(P1+P2+P3+P5)*V;//lime required in mg//
L=L/10^6;
printf("\nLime required is %.2fkg",L);
S=1.06*(P4+P5)*V;//soda required in mg//
S=S/10^6;
printf("\nSoda required is %.2fkg",S)