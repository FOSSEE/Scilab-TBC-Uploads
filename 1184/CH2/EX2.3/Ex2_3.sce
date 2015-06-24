clc;
clear;
A1=5;
A2=2;
A3=17;
total_gain=A1*A2*A3;
pin= 40*10^-3;
pout=total_gain*pin;
printf('The output power is %.1f watts',pout);

