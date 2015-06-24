//Exa 9.8
clc;
clear;
close;
//Given data : 
P=100000;//in Rs
F=20000;//in Rs
n=8;//in years
i=12;//in % per annum
//Formula : (A/F,i,n) : (i/100)/(((1+i/100)^n)-1)
//Formula : (F/P,i,n) : (1+i/100)^n
//Formula : (F/A,i,n) : (((1+i/100)^n)-1)/(i/100)
t=5;//in Years
Dt=(P-F)*(i/100)/(((1+i/100)^n)-1)*(1+i/100)^(t-1);//in Rs.
disp(Dt,"D5 in Rs. : ");
t=7;//in Years
Bt=P-(P-F)*(i/100)/(((1+i/100)^n)-1)*(((1+i/100)^t)-1)/(i/100);//in Rs.
disp(Bt,"B7 in Rs. : ")