clear;
clc;
Z1=50+(%i*125);Z2=200-(%i*100);
Zot=sqrt((Z1/4)*(Z1+(4*Z2)));
A=real(Zot);
B=imag(Zot);
printf("Characteristic impedance = %f + j(%f) ohms",round(A),round(B*100)/100);
