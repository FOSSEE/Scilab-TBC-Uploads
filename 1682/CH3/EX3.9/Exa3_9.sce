//Exa3_9
clc;
clear;
close;
//given data is :
P=5000;//in rupees
n=10;//in years
i=12;//% per annum
m=4;//no. of interest periods per year for quarterly
N=n*m;
r=i/m;
F=P*(1+r/100)^N;
disp("Maturity value after 10 years is : "+string(F)+" Rupees.");