//Exa3b
clc;
clear;
close;
//given data :
Vo=1000;//in Rs
r=12;//in % per annum
i=r/100;
t=3;//in years
//interest is calculated in quarterly basis
n=4*t;
i=i/4;
//formula Vn=Vo*(1+i)^n
Vn=Vo*(1+i)^n;
disp(Vn," The compound value (in Rs.) : ")

