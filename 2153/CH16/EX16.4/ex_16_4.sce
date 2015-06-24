//Example 16.4 : number of electron carriers
clc;
clear;
close;
format('v',9)
//given data :
e=1.6*10^-19;
p=20*10^-2;// in ohm-m
mu_n=100*10^-4;// in m^2/V-sec
n=1/(e*mu_n*p);
disp(n,"number of electrons carrier,n(/m^3) = ")
