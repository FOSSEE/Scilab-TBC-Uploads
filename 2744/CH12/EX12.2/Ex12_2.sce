clear;
clc;
D = 2;// inches
N = 150;// RPM
f_s = 9000;// lb/in^2
M_r = f_s*(%pi/16)*D^3;// lb-inches
HP = M_r*2*%pi*N/(12*33000);//
printf('H.P transmitted is %.2f',HP);
