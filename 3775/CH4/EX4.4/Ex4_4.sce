//Ex 4.4 page 160

clc;
clear;
close;


R=30;// ohm
Vs=230;// V
f=50;// Hz
alpha = 45;// degree

Vor=Vs*sqrt(1/%pi*(%pi-alpha*%pi/180+sin(2*alpha*%pi/180)/2));// V
Ior=Vor/R;// A
printf('\n rms load voltage = %.2f V', Vor)
printf('\n rms load current = %.2f A', Ior)
