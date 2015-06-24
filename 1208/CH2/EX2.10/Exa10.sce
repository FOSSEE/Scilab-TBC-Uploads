//Exa9
clc;
clear;
close;
//given data is :
CI=102;//in rupees
r=4;//in % per annum
n=2;//in years
//Let principal amount is P
//Amount will be: A=P+102
//formula : A=P(1+r/100)^n=P+102;
P=102/((1+r/100)^n-1);
SI=(P*r*n)/100;
disp("Simple interest is : "+string(SI)+" Rupees.")