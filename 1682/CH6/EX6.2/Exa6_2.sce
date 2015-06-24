//Exa 6.2
clc;
clear;
close;
//Alternative 1 :
disp("Alternative 1: ");
P=500000;//in Rs
A=200000;//in Rs
i=20;//in % per annum
n=15;//in years
//Formula : (A/P,i,n) : ((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)
AE_1=P*((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)+A;//in RS
disp(AE_1,"The Annual equivalent cost of alternative 1 in RS. : ");

//Alternative 2 :
disp("Alternative 2: ");
P=400000;//in Rs
A=300000;//in Rs
i=20;//in % per annum
n=15;//in years
//Formula : (A/P,i,n) : ((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)
AE_2=P*((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)+A;//in RS
disp(AE_2,"The Annual equivalent cost of alternative 1 in RS. : ");

//Alternative 3 :
disp("Alternative 3: ");
P=600000;//in Rs
A=150000;//in Rs
i=20;//in % per annum
n=15;//in years
//Formula : (A/P,i,n) : ((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)
AE_3=P*((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)+A;//in RS
disp(AE_3,"The Annual equivalent cost of alternative 1 in RS. : ");
disp("The annual equivalent cost of manufacturer 3 is less than that of other two. Therefore, company should buy advanced machine centre from manufacturer 3. ");
//Note : Calculation in the book is not accurate.