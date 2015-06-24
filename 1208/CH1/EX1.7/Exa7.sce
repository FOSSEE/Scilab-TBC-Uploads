//Exa7
clc;
clear;
close;
//given data :
Vo=100;//in Rs
Vn=200;//in Rs
n=7;//in years
m=2;//for half yearly compounding
//formula Vn=Vo*(1+i/m)^(m*n)
//solving for i gives
i=m*(%e^((log(Vn/Vo))/(m*n))-1);
r=i*100;
disp(r,"The rate of interest(in % per annum) is   : ")
