//Ex 3.12 page 126

clc;
clear;
close;

R=20;// ohm
Vs=400;// V
f=50;// Hz
alpha = 30;// degree

Vm=Vs*sqrt(2);// V
Vo=3*Vm/%pi*cos(alpha*%pi/180);// V
Io=Vo/R;// A
printf('\n Average load voltage = %.3f V',Vo)
printf('\n Average load current = %.3f A',Io)
