//Exa15
clc;
clear;
close;
//given data :
Vo=20000;//in Rs
r=4;//in % per annum
i=r/100;
n=10;//in years
//formula for annuity can be determined by Vo=(A*((1+i)^n-1))/(i*((1+i)^n));
A=(Vo*(i*((1+i)^n)))/((1+i)^n-1)
disp(A,"The amount of each investment(in Rs) is : ")
//Note: answer given in the book is not accurate