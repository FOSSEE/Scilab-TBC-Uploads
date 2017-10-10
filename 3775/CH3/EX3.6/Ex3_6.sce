//Ex 3.6 page 122

clc;
clear;
close;

R=10;// ohm
L=100/1000;// H
E=100;// V
Vs=230;// V
f=50;// Hz
alpha = 45;// degree
Vm=Vs*sqrt(2);// V
Vo=2*Vm/%pi*cos(alpha*%pi/180);// V
Io=(Vo-E)/R;// A
printf('Average load current = %.3f A',Io)
