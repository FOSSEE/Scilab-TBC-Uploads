//water chemistry//
//example 7.13//
W1=160;//amount of Ca2+ in ppm//
W2=88;//amount of Mg2+ in ppm//
W3=72;//amount of CO2 in ppm//
W4=488;//amount of (HCO3)- in ppm//
W5=139;//amount of (FeSO4).7H2O in ppm//
M1=100/40;//multiplication factor of Ca2+//
M2=100/24;//multiplication factor of Mg2+//
M3=100/44;//multiplication factor of CO2//
M4=100/(61*2);//multiplication factor of (HCO3)-//
M5=100/278;//multiplication factor of (FeSO4).7H2O//
P1=W1*M1;//in terms of CaCO3//
P2=W2*M2;//in terms of CaCO3//
P3=W3*M3;//in terms of CaCO3//
P4=W4*M4;//in terms of CaCO3//
P5=W5*M5;//in terms of CaCO3//
V=100000;//volume of water in litres//
L=0.74*(P2+P3+P4+P5)*V;//lime required in mg//
L=L/10^6;
printf("Lime required is %fkg",L);
S=1.06*(P1+P2+P5-P4)*V;//soda required in mg//
S=S/10^6;
printf("\nSoda required is %fkg",S);
