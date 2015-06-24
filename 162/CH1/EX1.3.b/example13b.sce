//Example 1.3b
//Find whether the the given signal is energy or power signal
clc;
b=0.5;
t=0:0.001:10;
y=exp(-b*t);
E=integrate('(exp(-b*t))^2','t',0,2*%pi);
disp(E,'Energy of the signal is');
disp('Since the energy of the given signal is finite so we can say that this signal is an energy signal');