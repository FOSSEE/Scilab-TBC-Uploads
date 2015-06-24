//Exa17
clc;
clear;
close;
//given data :
Vo=200000;//in Rs
r=8;//in % per annum
i=r/100;
n=5;//in years
//Formula for size of installment can be calculated by Vo=(A*((1+i)^n-1))/(i*(1+i)^n);
A=(Vo*(i*(1+i)^n))/((1+i)^n-1);
disp(A,"Required value(in Rs) : ")
//Note: answer given in the book is not accurate