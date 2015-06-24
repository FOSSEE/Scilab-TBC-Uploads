//Exa6
clc;
clear;
close;
//given data is :
P=10000;//in rupees
N=3;// years
r1=4;// in % per annum for 1st year
r2=5;// in % per annum for 2nd year
r3=10;// in % per annum for 3rd year
A=P*(1+r1/100)*(1+r2/100)*(1+r3/100);
CI=A-P;
disp("Compound interest is : "+string(CI)+" Rupees.")





