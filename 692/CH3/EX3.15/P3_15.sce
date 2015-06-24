//EXAMPLE 3.15
//ENERGY OF A SIGNAL x[n]=a^n*u[n]
clc;
clear;
a=0.5;
n=0:0.1:9.9;
//x[n]=a^n*u[n]
for i = 0:length(n)
    x(i+1) = a^i;
    E=(abs(x))^2; 
end
Energy=sum(E);
disp(Energy,'Energy of the signal = ');