//Exa 9.2
clc;
clear;
close;
//Given data : 
P=100000;//in Rs
F=20000;//in Rs
n=8;//in years
D5=(P-F)/n;//in Rs.
disp(D5,"D5 in Rs. : ");
disp("(This is independent of the time period)");
t=5;//in years
Bt=P-t*(P-F)/n;//in Rs
disp(Bt,"B5 in Rs. : ")