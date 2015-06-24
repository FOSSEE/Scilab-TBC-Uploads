//Exa 6.8
clc;
clear;
close;
//Machine A :
disp("Machine A : ");
IC=300000;//in Rs
n=4;//in years
S=200000;//in Rs
AM=30000;//in Rs
i=15;//in % per annum
//Formula : (A/F,i,n) : (i/100)/(((1+i/100)^n)-1)
//Formula : (A/P,i,n) : ((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)
AE_A=IC*((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)+AM-S*(i/100)/(((1+i/100)^n)-1);//in RS
disp(AE_A,"The Annual equivalent cost of machine X in RS. : ");

//Machine B :
disp("Machine B : ");
IC=600000;//in Rs
n=4;//in years
S=300000;//in Rs
AM=0;//in Rs
i=15;//in % per annum
//Formula : (A/F,i,n) : (i/100)/(((1+i/100)^n)-1)
//Formula : (A/P,i,n) : ((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)
AE_B=IC*((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)+AM-S*(i/100)/(((1+i/100)^n)-1);//in RS
disp(AE_B,"The Annual equivalent cost of machine X in RS. : ");
disp("The annual equivalent cost of machine A is less than that of machine B.So machine A is more cost effective machine. It is advised to buy machine A ");
//Note : Calculation in the book is not accurate.