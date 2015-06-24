//Ex 1.40.22
clc;clear;close;
format('v',9);

//Given : 
h=6.64*10^-34;//planks constant
c=3*10^8;//m/s(speed of light)
lambda=0.87*10^-6;//m
Eg=h*c/lambda/(1.6*10^-19);//eV
disp(Eg,"Band gap(eV)  : ");
