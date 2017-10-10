//Ex 3.10 page 124

clc;
clear;
close;

R=2;// ohm
Vs=230;// V
f=50;// Hz
alpha = 120;// degree
Ia=10;// A

Vo=2*sqrt(2)*Vs*cos(alpha*%pi/180)/%pi
V=Ia*R-Vo;// V
printf('emf on load side = %.2f V', V)
