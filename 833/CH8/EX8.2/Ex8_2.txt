//Caption: Find the (a)current (b)voltage required
//Exa:8.2
clc;
clear;
close;
r=1//Resistance of series motor(in ohms)
V=230//Voltage of series motor(in volts)
n_1=300//Speed of motor(in r.p.m)
i_1=15//Current taken by motor(in A)
n_2=375//Speed of motor(in r.p.m)
i_2=sqrt(((i_1^2)*(n_2^2))/(n_1^2))
disp(i_2,'(a)Current(in A)=')
V_2=(((V-(i_1*r))*(i_2*n_2))/(i_1*n_1))+(i_2*r)
disp(V_2,'(b)Voltage(in volts)=')