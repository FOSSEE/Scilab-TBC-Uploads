//Ex 2.10 page 73

clc;
clear;
close;

R=10;// ohm
L=0.1;// H
delta_i=20/1000;// A
Vs=230;// V4
f=50;// Hz
theta=45;//degree

delta_t = L*delta_i/Vs; // s
delta_t = delta_t*10**6;// micro s
printf('Minimum gate pulse width = %.1f micro s',delta_t)

