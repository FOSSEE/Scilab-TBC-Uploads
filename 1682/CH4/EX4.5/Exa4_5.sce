//Exa 4.5
clc;
clear;
close;
//Plan 1 : 
P0=-1000;//in Rs
P=12000;//in Rs
i=12;//in % per annum
n=15;//in years
//Formula : (P/F,i,n) : 1/((1+i/100)^n)
PW1=P0+P*1/((1+i/100)^n);//in RS
disp(PW1,"The present worth of Plan-1 in RS. : ");

//Plan 2 : 
P0=-1000;//in Rs
P=4000;//in Rs
i=12;//in % per annum
n1=10;//in years
n2=15;//in years
//Formula : (P/F,i,n) : 1/((1+i/100)^n)
PW2=P0+P*1/((1+i/100)^n1)++P*1/((1+i/100)^n2);//in RS
disp(PW2,"The present worth of Plan-2 in RS. : ");
disp("The present worth of Plan-1 is more than that of Plan-1. Therefore plan 1 is the best plan from the investors point of view.");