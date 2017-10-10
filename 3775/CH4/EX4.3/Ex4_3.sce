//Ex 4.3 page 159

clc;
clear;
close;


R=10;// ohm
Vs=230;// V
f=50;// Hz
alpha = 90;// degree

Vor=Vs*sqrt(1/%pi*(%pi-alpha*%pi/180+sin(2*alpha*%pi/180)/2));// V
Ior=Vor/R;// A
P=Ior**2*R;// W
pf=Vor/Vs;// power factor
printf('\n rms load voltage = %.2f V', Vor)
printf('\n rms load current = %.2f A', Ior)
printf('\n power input = %.2f W', P)
printf('\n load power factor = %.1f ',pf)
