// Exa 3.9
clc;
clear;
close;
// Given data
p0 = 1.86;
p100 = 6.81;
T1=32;
T2= 212;
// Relation of T in terms of p for ice point      T1= a*log(p0)+b          (i)
// Relation of T in terms of p for steam point  T2= a*log(p100)+b     (ii)
// From eq(i) and (ii)
a= (T2-T1)/log(p100/p0);
b= T1-a*log(p0);
// The temp at 
p=2.5;
T= a*log(p)+b;// in °unit
disp(T,"The temperature at p=2.5 in °unit is :")
