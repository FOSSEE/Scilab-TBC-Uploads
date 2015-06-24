//Exa9
clc;
clear;
close;
//given data :
A=1000;//in Rs
r=16;//in % per annum
i=r/100;
n=12;//in years
//formula FVA=(A*(1+i)^n-1)/i;
FVA=(A*((1+i)^n-1))/i;
disp(FVA,"The future value(in Rs.) is : ")
//Note: answer given in the book is not accurate