clear;
clc;
a=0;Zo=50;Vr=100;l=50;y=10;Ir=0;f=20*(10^6);
lo=300/f; //lo=lambda
b=2*%pi/lo;
P=a+(%i*b);
V=(Vr*cosh(P*y))+(Ir*Zo*sinh(P*y));
printf("-Voltage at the required point = %f /_ %f volts\n",abs(V),atan(imag(V),real(V))*180/%pi);
I=((Vr/Zo)*sinh(P*y))+(Ir*cosh(P*y));
A=real(I);
B=imag(I);
printf("-Current at required point = %f /_ %f Amps",round(abs(I)*1000)/1000,atan(B,A)*180/%pi);
