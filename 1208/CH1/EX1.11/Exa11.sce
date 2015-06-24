//Exa11
clc;
clear;
close;
//given data :
Vn=5000;//in Rs
r=10;//in % per annum
i=r/100;
n=5;//in years
//formula for present value Vo=Vn/(1+i)^n
Vo=Vn/(1+i)^n;
disp(Vo,"Present value is: ")