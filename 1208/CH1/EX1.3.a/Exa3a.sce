//Exa3a
clc;
clear;
close;
//given data :
Vo=1000;//in Rs
r=12;//in % per annum
i=r/100;
t=3;//in years
//interest is calculated in yearly basis
n=t;
//formula Vn=Vo*(1+i)^n
Vn=Vo*(1+i)^n;
disp(Vn," The compound value (in Rs.) : ")
//The ans in the book is wrong
disp("Note : The ans in the book is wrong")
