//Ex 3.14 page 127

clc;
clear;
close;

n=3;// no. of phase
R=60;// ohm
Vs=400;// V
alpha = 30;// degree

Vm=Vs*sqrt(2);// V
Vo=3*Vm/%pi*cos(alpha*%pi/180);// V
Io=Vo/R;// A
Is=Io*sqrt(2/3);// A
P=Io**2*R;// W
pf=P/sqrt(3)/Vs/Is;// power factor

printf('\n Average load voltage = %.3f V',Vo)
printf('\n Average load current = %.1f A',Io)
printf('\n input power factor = %.4f',pf)
// Note : Ans in the textbook is wrong as in calculation for pf Io is used in place of Is
