//Exa 9.4
clc;
clear;
close;
//Given data : 
P=100000;//in Rs
F=20000;//in Rs
n=8;//in years
k=0.2
t=5;//in years
Dt=k*(1-k)^(t-1)*P;//in Rs.
disp(Dt,"D5 in Rs. : ");
Bt=((1-k)^t)*P;//in Rs.
disp(Bt,"B5 in Rs. : ")