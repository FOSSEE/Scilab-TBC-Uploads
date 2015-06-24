//Exa1
clc;
clear;
close;
//given data :
Vo=500;//in Rs
r=5;//in % per annum
i=r/100;
n=3;//in years
//formula Vn=Vo*(1+i)^n
V3=Vo*(1+i)^n;
disp(V3,"future value after three years : ")
CI=V3-Vo;
disp(CI,"compound interest is  : ")