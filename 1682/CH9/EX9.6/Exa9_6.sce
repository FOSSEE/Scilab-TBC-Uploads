//Exa 9.6
clc;
clear;
close;
//Given data : 
P=100000;//in Rs
F=20000;//in Rs
n=8;//in years
t=5;//in years
Dt=(n-t+1)*(P-F)/(n*(n+1)/2);//in Rs.
disp(Dt,"D5 in Rs. : ");
Bt=(P-F)*((n-t)/n)*((n-t+1)/(n+1))+F;//in Rs.
disp(Bt,"B5 in Rs. : ")