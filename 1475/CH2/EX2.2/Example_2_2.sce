// Example 2.2 A random variable has the following proabability distribution
clc;
clear;
x=[4 5 6 8];
Probab=[0.1 0.3 0.4 0.2];
disp(sum(x .* Probab),"Mean =");
disp(sum((x .^2) .* Probab), "Expectation =");
disp(sum((x .^2) .* Probab)-(sum(x .* Probab)^2), "Variance =");
disp(sqrt(sum((x .^2) .* Probab)-(sum(x .* Probab)^2)),"Standard Deviation = ");

