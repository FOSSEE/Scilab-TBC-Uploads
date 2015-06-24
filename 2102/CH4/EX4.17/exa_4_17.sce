// Exa 4.17
clc;
clear;
close;
// Given data
e= 1.6*10^-19;// in C
Eg= 0.75*e;// in J
h= 6.62*10^-34; // in Js
c= 3*10^8;// in m/s
n=90/100;
// Formula Eg= h*c/lamda
lamda= h*c/Eg;// in m
lamda=lamda*10^9;// in nm
R= n*lamda/1248;// in A/W
disp(R,"Responsivity in A/W is : ")
