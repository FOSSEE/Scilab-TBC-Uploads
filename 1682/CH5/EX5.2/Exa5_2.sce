//Exa 5.2
clc;
clear;
close;
//Alternative 1 :
disp("Alternative 1: ");
FC=2000000;//in Rs
AI=800000;//in Rs
ATax=80000;//in Rs
NetAI=AI-ATax;//in Rs

i=12;//in % per annum
n=20;//in years
//Formula : (F/P,i,n) : (1+i/100)^n
//Formula : (F/A,i,n) : (((1+i/100)^n)-1)/(i/100)
FW_1=(-FC*(1+i/100)^n)+(NetAI*(((1+i/100)^n)-1)/(i/100));//in RS
disp(FW_1,"The future worth amount of alternative 1 in RS. : ");

//Alternative 2 :
disp("Alternative 2: ");
FC=3600000;//in Rs
AI=980000;//in Rs
ATax=150000;//in Rs
NetAI=AI-ATax;//in Rs

i=12;//in % per annum
n=20;//in years
//Formula : (F/P,i,n) : (1+i/100)^n
//Formula : (F/A,i,n) : (((1+i/100)^n)-1)/(i/100)
FW_2=(-FC*(1+i/100)^n)+(NetAI*(((1+i/100)^n)-1)/(i/100));//in RS
disp(FW_2,"The future worth amount of alternative 2 in RS. : ");
disp("The future worth of alternative 1 is greater than that of alternative 2. Thus, building the gas station is the best alternative.");
//Note : Calculation in the book is not accurate.