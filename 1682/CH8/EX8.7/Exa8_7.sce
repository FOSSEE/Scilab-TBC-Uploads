//Exa 8.7
clc;
clear;
close;
//Alternative 1: Augmenting the present 10 hp motor with an additional 5 hp motor
disp("Alternative 1: Augmenting the present 10 hp motor with an additional 5 hp motor.");
//Calculation of annual equivalent cost of 10 hp motor
P=10000;//in Rs
F=1500;//in Rs
A=1600;//in Rs
i=15;//in % per annum
n=7;//in years
//Formula : (A/P,i,n) : ((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1) 
AE1=(P-F)*((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)+F*i/100+A;//in RS
disp(AE1,"The annual equivalent cost(AE(10%)) of 10 hp motor  in RS. : ");

//Calculation of annual equivalent cost of 5 hp motor
P=10000;//in Rs
F=800;//in Rs
A=1000;//in Rs
i=15;//in % per annum
n=7;//in years
//Formula : (A/P,i,n) : ((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1) 
AE2=(P-F)*((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)+F*i/100+A;//in RS
disp(AE2,"The annual equivalent cost(AE(10%)) of 10 hp motor  in RS. : ");
disp(AE1+AE2,"Total annual equivalent cost of alternative in Rs. : ");


//Alternative 2: Replacing the present 10 hp motor with a new 15 hp motor
disp("Alternative 2: Replacing the present 10 hp motor with a new 15 hp motor.");
P=35000;//in Rs
F=4000;//in Rs
A=500;//in Rs
i=15;//in % per annum
n=7;//in years
//Formula : (A/P,i,n) : ((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1) 
AE=(P-F)*((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)+F*i/100+A;//in RS
disp(AE,"The annual equivalent cost of alternative 2 in RS. : ");
disp("Since, The equivalent cost of alternative 1 is less than that of alternative 2, it is suggested that the present 10 hp motor be augmented with an additional 5 hp motor.");
//Note  : calculations in the book is not accurate.