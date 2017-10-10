//Ex 3.9 page 124

clc;
clear;
close;

R=50;// ohm
Vs=230;// V
f=50;// Hz
alpha = 30;// degree
Vm=Vs*sqrt(2);// V
Vo=2*Vm/%pi*cos(alpha*%pi/180);// V
printf(' (i) Average voltage across 50 ohm resistor = %.2f V', Vo)
Io=(Vo)/R;// A
Ior=Io/sqrt(2);// A
printf('\n (ii) rms current = %.4f A', Ior)
