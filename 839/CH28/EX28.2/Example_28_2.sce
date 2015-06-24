//clear//
clear;
clc;

//Example 28.2
//Given
x = 0.14;
xavg = 0.10;
t = 3; //[min]
x =[10.24,9.3,7.94,10.24,11.08,10.03,11.91,9.72,9.20,10.76,10.97,10.55]/100;

//Solution
mu = xavg;
N =12;
xbar = mean(x);
//Substituing in Eq.(28.20)
Ip = sqrt((N-1)*mu*(1-mu)/(sum(x^2)-xbar*sum(x)));
//Using Eq.(28.18)
s = stdev(x);
disp(s,'s =',Ip,'Ip =')
