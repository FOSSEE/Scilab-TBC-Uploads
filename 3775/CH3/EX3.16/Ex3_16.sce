//Ex 3.16 page 128

clc;
clear;
close;

n=3;// no. of phase
Vs=400;// V
f=50;// Hz
Ls=5/1000;// H
Io=20;// A
Ri=1;// ohm
Vdc=400;// V

Vo=Vdc+Io*Ri;// V
// Vo=3*Vm/%pi*cos(alpha*%pi/180)-3*2*%pi*f*Ls/%pi*Io
Vm=sqrt(2)*Vs;// V
alpha=acos((Vo+3*2*%pi*f*Ls/%pi*Io)/(3*Vm/%pi))*180/%pi;// degree

// Vo=3*Vm/%pi*cos((alpha+mu)*%pi/180)-3*2*%pi*f*Ls/%pi*Io
mu=acos((Vo-3*2*%pi*f*Ls/%pi*Io)/(3*Vm/%pi))*180/%pi-alpha;// degree
printf('\n Firing angle = %.2f degree',alpha)
printf('\n Overlap angle = %.2f degree',mu)
// ans in the textbook is not accurate.
