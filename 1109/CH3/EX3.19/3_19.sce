clear;
clc;
Zo=600;a=0.01;b=0.03;l=100;Zr=200;
P=a+(%i*b);
K=(Zr-Zo)/(Zr+Zo);
printf("Reflection coefficient = %f /_- %f\n",abs(K),atan(imag(K),real(K))*180/%pi);
k=((abs(K))*exp(-2*P*l));
b=(1+k)/(1-k);
Zin=Zo*b;
C=real(Zin);
D=imag(Zin);
printf("Input impedance Zin = %f + j(%f) ohms",round(C*1000)/1000,round(D*100)/100);
//Zin has been wrongly calculated in the book

