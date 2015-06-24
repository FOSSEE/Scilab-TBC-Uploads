//Exa13
clc;
clear;
close;
//given data :
R1=676;//in Rs
R2=676;//in Rs
r=4;//in % per annum
i=r/100;
n=2;//in years
//formula for present value of series payments V0=R1/(1+i)^(1)+R2/(1+i)^(2)+..
Vo=R1/(1+i)^(1)+R2/(1+i)^(2);
disp(Vo,"The borrowed sum is : ")