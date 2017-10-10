//Ex 5.1 page 184

clc;
clear;
close;

R=10;// ohm
Vs=230;// V
f=1*1000;// Hz
Ton=0.4;// ms
k=0.4 ;// duty cycle

Vo=Vs*k;//V
Ioav=Vo/R;// A
Vor=Vs*sqrt(k);// V
Po=Vor**2/R;// W
printf('\n Average load current = %.1f A', Ioav)
printf('\n Power delivered = %.2f W',Po)
