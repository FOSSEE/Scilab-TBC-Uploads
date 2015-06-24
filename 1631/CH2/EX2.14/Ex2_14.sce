//Caption: Probability 
//Example 2.14
//page no 54
//find the probability 
clc;
clear;
function y=f(x),
    y=12*x^3-21*x^2+10*x,//Probability Density Function
endfunction
a=0;
b=1/2;
P=intg(a,b,f);
disp(P,"P(X<=1/2)=");
disp(1-P,"P(X>1/2)=");
