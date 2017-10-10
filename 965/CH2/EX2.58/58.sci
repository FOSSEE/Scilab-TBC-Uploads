clc;
clear all;
disp("To find heat flow rate")
x1=50/1000;//m
x2=250/1000;//m
t1=400;// degree C
t2=200;// degree C
c=0.22;
k=3.6 ;// W/(m*C)
Q=3.1416*c*c*k*(t1-t2)/(4*(1/x1-1/x2));
disp("W",Q," Heat flow rate = ")
