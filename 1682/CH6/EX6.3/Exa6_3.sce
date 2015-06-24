//Exa 6.3
clc;
clear;
close;
//Alternative A :
disp("Alternative A: ");
P=150000;//in Rs
A=60000;//in Rs
S=15000;//in Rs
i=25;//in % per annum
n=5;//in years
//Formula : (A/P,i,n) : ((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)
//Formula : (A/F,i,n) : (i/100)/(((1+i/100)^n)-1)
AE_A=-P*((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)+A+S*(i/100)/(((1+i/100)^n)-1);//in RS
disp(AE_A,"The Annual equivalent revenue of alternative A in RS. : ");
//Alternative B :
disp("Alternative B: ");
P=175000;//in Rs
A=70000;//in Rs
S=35000;//in Rs
i=25;//in % per annum
n=5;//in years
//Formula : (A/P,i,n) : ((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)
//Formula : (A/F,i,n) : (i/100)/(((1+i/100)^n)-1)
AE_B=-P*((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)+A+S*(i/100)/(((1+i/100)^n)-1);//in RS
disp(AE_B,"The Annual equivalent revenue of alternative A in RS. : ");
disp("The annual equivalent net return of alternative B is more than that of alternative A. Thus the company should select alternative A");
//Note : Calculation in the book is not accurate.