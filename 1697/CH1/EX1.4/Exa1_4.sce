//Exa 1.4
clc;
clear;
close;
//given data :
W=625;//in KW
r=30;//in Km
Erms=sqrt(90*W*1000)/(r*1000);//in V/m
disp(Erms*1000,"Strength of Electric field at 30Km away in mV/m : ");