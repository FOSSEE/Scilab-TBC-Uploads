//Caption: Probability 
//Example 2.13
//page no 54
//find the probability 
clc;
clear;
function y=f(x),
    y=2*exp(-(2*x)),//Probability Density Function
endfunction

a=1;
b=3;
P=intg(a,b,f);//probability that random variable between 1 and 3
disp(P,"P(1<X<3)=");
