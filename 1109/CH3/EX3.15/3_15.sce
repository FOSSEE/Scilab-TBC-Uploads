clear;
clc;
Zo=600;Zr=%i*150;l=0.25;f=300*(10^6);
lo=300/f; //lo=lambda
b=2*%pi/lo;
Zin=Zo*Zo/Zr;
A=real(Zin);
B=imag(Zin);
printf("Zin = %f + j(%f) ohms",A,B);
