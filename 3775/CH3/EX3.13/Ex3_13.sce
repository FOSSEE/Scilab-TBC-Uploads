//Ex 3.13 page 126

clc;
clear;
close;

n=3;// no. of phase
Vs=400;// V
f=50;// Hz
Io=100;// A
alpha = 60;// degree

Vm=Vs*sqrt(2);// V
Vo=n*Vm/%pi*cos(alpha*%pi/180);// V
Po=Vo*Io;// W
printf(' (i)')
printf('\n Output voltage = %.0f V',Vo)
printf('\n Output power = %.0f W',Po)
printf('\n\n (ii)')
Iav=Io*2*%pi/3/2/%pi;// A
printf('\n average current through thyristor = %.2f A', Iav)
Ior=sqrt(Io**2*2*%pi/3/2/%pi);// A
printf('\n rms current through thyristor = %.2f A', Ior)
Ip=Io;//A
printf('\n peak current through thyristor = %.2f A', Ip)
printf('\n\n (iii)')
PIV=sqrt(2)*Vs;//V
printf('\n PIV of thyristor = %.1f V',PIV)
// Ans in the book is not accurate.
