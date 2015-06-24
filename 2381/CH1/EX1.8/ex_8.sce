//Example 8 //  Period of motion
clc;
clear;
close;
//given data :
x=0.16;// in m
m1=4;// in kg
g=9.8;
K=m1*g/x;
m=0.50;// in kg
T=2*%pi*sqrt(m/K);// 
disp(T,"The period of motion ,T(seconds) = ")
// answer is wrong in textbook
