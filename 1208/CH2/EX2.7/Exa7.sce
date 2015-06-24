//Exa7
clc;
clear;
close;
//given data is :
CI=496.50;//compound interest in rupees
n=3;//in years
r=10;//rate in % per annum
disp("CI is given by : ");
disp("CI=P(1+r/100)^n-P");
//solving this eqn
P=CI/((1+r/100)^n-1);
disp("Principal amount is : "+string(P)+" Rupees.")

