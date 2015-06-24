//Exa12
clc;
clear;
close;
//given data :
Vn=15000;//in Rs
r=12;//in % per annum
i=r/100;
n=5;//in years
m=2;//for half yearly compounding
//formula EIR=(1+i/m)^m-1;
EIR=(1+i/m)^m-1;
//formula for present value Vo=Vn/(1+i)^n
//taking i=EIR;
i=EIR;
Vo=Vn/(1+i)^n;
disp(Vo,"Present value is: ")
