//Exa5
clc;
clear;
close;
//given data :
Vo=5000;//in Rs
r=12;//in % per annum
i=r/100;
//On 6th year means amount deposited for 5 years
n=5;//in years
//interest is calculated in Half yearly basis
m=2;
//formula Vn=Vo*(1+i/m)^(m*n)
Vn=Vo*(1+i/m)^(m*n)
disp(Vn," After completing 5 years i.e, on its 6th year child  will recieve(in Rs.) : ")