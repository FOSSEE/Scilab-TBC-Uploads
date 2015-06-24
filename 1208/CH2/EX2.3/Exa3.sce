//Exa2
clc;
clear;
close;
//given data is :
P=5000;//in rupees
n=3/2;//in years
r=10/2;//% per annum paid half yearly
m=2;//freq of compounding
A=P*(1+r/100)^(m*n);
CI=A-P;//in rupees
disp("Compound interest is : "+string(CI)+" Rupees.")




