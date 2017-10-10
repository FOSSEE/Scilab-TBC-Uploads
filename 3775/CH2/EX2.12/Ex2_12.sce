//Ex 2.12 page 74

clc;
clear;
close;

VS=300;// V
delta_i = 50/1000;// A
R=60;// ohm
L=2;// H
TP=40*10**-6;// s

I1=VS/L*TP;// A (at the end of pulse)
// as I1 << delta_i
I2=delta_i;// A (anode current with RL load)

Rdash = VS/(I2-I1)/1000;// kohm
printf('Value of resistance = %.2f kohm',Rdash)

