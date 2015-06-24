//Exa 6.9
clc;
clear;
close;
//Alternative 1 : 
disp("Alternative 1 : ");
DP=60000;//in Rs
P1=15000;//in Rs
n=1;//in years
i=12;//in % Compounded anually
//Formula : (P/F,i,n) : 1/((1+i/100)^n)
PW1=DP+P1*1/((1+i/100)^n);//in RS
disp(PW1,"The annual equivalent for this alternative in RS. : ");
//Formula : (A/P,i,n) : ((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)
n=4;//in years
AE1=PW1*((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)
disp(AE1,"The annual equivalent for this alternative in RS. : ");

//Alternative 2 : 
disp("Alternative 2 : ");
P4y=90000;//in Rs
AE2=P4y*(i/100)/(((1+i/100)^n)-1);//in Rs.
disp(AE2,"The annual equivalent for this alternative in RS. : ");
disp("The annual equivalent cost of alternative 2 is less than that of alternative 1. Hence, Joshi Lakshimi should select alternative 2 for purchasing the home equipment.");
//Note : Calculation in the book is not accurate.