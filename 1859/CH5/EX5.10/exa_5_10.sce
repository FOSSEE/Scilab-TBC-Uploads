// Exa 5.10
clc;
clear;
close;
// Given data
n=3;
R=1/10^n;
fs1=10;// full scale range of 10 v
r1= fs1*R;// resolution for full scale range of 10 V
disp(r1,"Resolution for full scale range of 10 V")
fs2=100;// full scale range of 100 v
r2= fs2*R;// resolution for full scale range of 100 V
disp(r2,"Resolution for full scale range of 100 V")
disp("The display of 14.53 V reading on 10 V scale would be 14.53")
disp("The display of 14.53 V reading on 100 V scale would be 0145.3")
