//Ex_2_2
clc;
clear;
close;
format('v',6);
//given data : 
l=0.5;//m
B=0.5;//Wb/m^2
I=50;//A
v=20;//m/s
F=B*l*I;//N
disp(F,"Force expereinced by the conductor(N)");
e=B*l*v;//V
disp(e,"emf induced(V)");
