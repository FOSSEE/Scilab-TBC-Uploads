//Example 3.2.1 // torque
clc;
clear;
close;
format("v",8)
//given data :
N=10;
L=1.5*10^-2;// in m
I=1;// in mA
B=0.5;
d=1*10^-2;// in m
Td=B*I*L*d*N;
disp(Td*10^-3,"torque,Td(Nm) = ")
