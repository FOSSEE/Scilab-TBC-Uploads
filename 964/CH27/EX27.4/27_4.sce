clc;
clear;
m1=40;//kg
m2=40;//kg
k=200;//N/m
sqw=poly(0,"s");
p=sqw^2-20*sqw+75;
r=roots(p);
f1=(r(1))^0.5;
f2=(r(2))^0.5;
Tp1=(2*%pi)/f1;
Tp2=(2*%pi)/f2;
//for first mode
disp("For first mode:")
disp(Tp1,"Period of oscillation:")
disp("A1=-A2")
disp("--------------------------------------------------")
//for first mode
disp("For second mode:")
disp(Tp2,"Period of oscillation:")
disp("A1=A2")
