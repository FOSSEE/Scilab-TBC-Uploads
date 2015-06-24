//Example 5.14 : mobility and average time
clc;
clear;
close;
//given data :
format('v',6)
m=9.109*10^-31; // in kg
e=1.602 *10^-19;
d=8.92*10^3;// in kg/m^3
p=1.73*10^-8;// ohm-m
A=63.5;//atomic weight
N=6.023*10^22; // avogadro's number
n=(N*d)/A;
b=1/p;// conductivity
mu=b/(n*e);
disp(mu,"mobility,mu(m^2/V-s) = ")
t=(mu*m)/e;
disp(t*10^9,"average time,t(ns) = ")
