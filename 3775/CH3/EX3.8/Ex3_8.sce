//Ex 3.8 page 123

clc;
clear;
close;

R=5;// ohm
L=1;// H
E=10;// V
Vs=230;// V
f=50;// Hz
alpha = 45;// degree
Vm=Vs*sqrt(2);// V
Vo=Vm/%pi*(1+cos(alpha*%pi/180));// V
printf(' Average load voltage = %.2f V', Vo)
Io=(Vo-E)/R;// A
printf('\n Average load current = %.2f A', Io)
PF=(Io**2*R+E*Io)/Vs/Io;// power factor
printf('\n Power factor = %.4f',PF)
