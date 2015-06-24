//Example 7 // Frequency
clc;
clear;
close;
//given data :
l=.50;// in m
m1=25;// in kg
m2=1.44*10^-3;// in kg
g=9.81;// in m/s^2
T=m1*g;
m=m2/l;
p=2;
n=(p/(2*l))*sqrt(T/m);
disp(n,"The frequency,n = ")
