
//Exa:9.4
clc;
clear;
close;
//Given:
Pe=10^-5;
v=0.5;
n=2*10^-6;
x=3.02;//at erfc(x)=2*10^-5 at x=3.02
T=(x^2*n)/(4*v^2);
B=1/T;
printf("\n Minimum Time Period= %f 10^-6",T*10^6);
printf("\n Maximum Bit rate = %fKb/sec",B/10^3);