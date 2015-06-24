
//Example 1.7// maximum static error
clc;
clear;
close;
//given data :
s=.20; // in %
a=60; // pressure gauge in bar
b=5; // pressure gauge in bar
Pg=a-b;
Se=(s*Pg)/100;
disp(Se,"maximum static error,Se(bar)= ±")
