clear;
clc;
dia=2*(10^-2);f=50;d=3.5;
r=dia/2;
Cab=0.01207/(log10(d/r))*(10^-6);
Xc=1/(2*%pi*f*Cab);
Bc=(1/Xc)*10^6;
printf("Capacitive susceptance per km = %f * 10^-6 mho/km",round(Bc*100)/100);
