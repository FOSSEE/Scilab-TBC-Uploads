//Example 7 // time and distance
clc;
clear;
close;
b=5;//N-s/m
v=10;//m/s
to=b/v;//second
disp(to,"time in which velocity falls to 1/e times the initial value is ,(second)=")
t2=b*to;//
disp(t2,"time in which velocit falls to half the initial value is,(second)=")
disp("diatnce traversed by the particle before the velocity falls to half the initial value is "+string(b)+"*(1-e^-(log)"+string((2*to)/to)+")")
x=b;//m
disp(x,"distance traversed by the particle it comes to rest is,(m)=")
