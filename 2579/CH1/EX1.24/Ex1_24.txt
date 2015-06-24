//Ex:1.24
clc;
clear;
close;
Er=15;// relative permittivity
ur=5;// relative mobility
B=1/sqrt(Er*ur);
A=3*10^8;// the value of 1/sqrt(Eo*uo)
V=A*B;// velocity of propagation in volt
printf("The field strength = %f*10^7 m/s", V/10^7);