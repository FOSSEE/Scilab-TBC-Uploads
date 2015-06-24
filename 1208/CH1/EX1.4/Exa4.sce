//Exa4
clc;
clear;
close;
//given data :
Vo=500;//in Rs
r=16;//in % per annum
i=r/100;
n=5;//in years
//interest is calculated in quarterly basis
m=4;
//formula Vn=Vo*(1+i/m)^(m*n)
Vn=Vo*(1+i/m)^(m*n)
disp(Vn," The amount will be(in Rs.) : ")
//Note: answer given in the book is not accurate