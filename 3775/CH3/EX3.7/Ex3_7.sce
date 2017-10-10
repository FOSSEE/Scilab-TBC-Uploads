//Ex 3.7 page 123

clc;
clear;
close;

R=2;// ohm
L=0.3;// H
E=100;// V
Vs=230;// V
f=50;// Hz
alpha = 30;// degree
Vm=Vs*sqrt(2);// V
Vo=2*Vm/%pi*cos(alpha*%pi/180);// V
printf(' Average load voltage = %.2f V', Vo)
Io=(Vo)/R;// A
printf('\n Average load current = %.2f A', Io)
Is=Io;// A
Is1=4*Io/%pi/sqrt(2);// A
PF=Vo*Io/Vs/Is;// power factor
printf('\n Power factor = %.4f',PF)
