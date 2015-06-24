//Exa 6.4
clc;
clear;
close;
//Machine X :
disp("Machine X : ");
P=150000;//in Rs
A=0;//in Rs
S=0;//in Rs
i=15;//in % per annum
n=12;//in years
//Formula : (A/P,i,n) : ((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)
AE_X=P*((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1);//in RS
disp(AE_X,"The Annual equivalent cost of machine X in RS. : ");

//Machine Y :
disp("Machine Y : ");
P=240000;//in Rs
A=4500;//in Rs
S=60000;//in Rs
i=15;//in % per annum
n=12;//in years
//Formula : (A/P,i,n) : ((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)
//Formula : (A/F,i,n) : (i/100)/(((1+i/100)^n)-1)
AE_Y=P*((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)+A-S*(i/100)/(((1+i/100)^n)-1);//in RS
disp(AE_Y,"The Annual equivalent cost of machine X in RS. : ");
disp("The annual equivalent cost of machine X is less than that of machine Y.So machine X is more cost effective machine. ");
//Note : Calculation in the book is not accurate.