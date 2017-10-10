//Ex 4.1 page 158

clc;
clear;
close;


R=5;// ohm
Vs=230;// V
f=50;// Hz
alpha = 120;// degree

Vor=Vs*sqrt(1/%pi*(%pi-alpha*%pi/180+sin(2*alpha*%pi/180)/2));// V
printf('\n rms load voltage = %.2f V', Vor)
Ior=Vor/R;// A
printf('\n rms load current = %.2f A', Ior)
Irms=Ior/sqrt(2);//A
printf('\n rms thyristor current = %.2f A', Irms)
pf=sqrt(1/%pi*((%pi-alpha*%pi/180)+sin(2*alpha*%pi/180)/2));// power factor
printf('\n input power factor = %.3f ',pf)
