//Example 1_35
clc;
clear;close;

//Given data: 
Vdc=100;//V
L=0.1*10^-3;//H
C=10*10^-6;//F
Vc=100;//V
t_off_thyristor=25*10^-6;//s
IL=10;//A
t_off=Vc*C/IL;//s
disp("T_off is "+string(t_off)+" seconds. It is greater than thristor turn off time, so it is sufficient for communication.")
Ip=Vdc*sqrt(C/L);//A
disp(Ip,"Current rating(A)");
