//Example 15// frequency
clc;
clear;
close;
l=2.5;//m
m1=0.001;//kg
tn=4;//N
m=m1/l;//kg/m
n=((1/(2*l))*sqrt(tn/m));//Hz
disp(n,"frequency is ,(Hz)=")
disp("frequencies stopped are "+string(5*n)+" Hz,"+string(10*n)+" Hz,"+string(15*n)+" Hz")
