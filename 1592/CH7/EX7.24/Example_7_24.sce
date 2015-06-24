//Scilab Code for Example 7.24 of Signals and systems by
//P.Ramakrishna Rao
//Plotting the step response
clc;
clear;
syms z n;
y1=2*(1-0.5^n);
disp(y1*'u(n)','The step Response of the System is:');
for n=0:10;
    q(n+1)=2*(1-0.5^n);
end
n=0:10;
plot(n,q);
title('Step Response   g(n)');
xlabel('n-->');
