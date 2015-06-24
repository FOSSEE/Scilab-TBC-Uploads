//Exa16
clc;
clear;
close;
//given data :
Vn=500000;//in Rs
r=10;//in % per annum
i=r/100;
n=5;//in years
//Formula for needed annual payment R=(Vn*i)/((1+i)^n-1);
R=(Vn*i)/((1+i)^n-1);
disp(R,"Required value(in Rs) : ")
//Note: answer given in the book is not accurate