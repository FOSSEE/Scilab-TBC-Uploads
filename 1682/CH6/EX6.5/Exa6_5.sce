//Exa 6.5
clc;
clear;
close;
//Alternative 1 : Around the lake
disp("Alternative 1 : Around the lake");
FC=15*150000;//in Rs
MC=15*6000;//in Rs
PL=15*15000;//in Rs
MCPL=MC+PL;//in Rs
S=15*90000;//in Rs
i=15;//in % per annum
n=15;//in years
//Formula : (A/F,i,n) : (i/100)/(((1+i/100)^n)-1)
//Formula : (A/P,i,n) : ((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)
AE1=FC*((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)+MCPL-S*(i/100)/(((1+i/100)^n)-1);//in RS
disp(AE1,"The Annual equivalent cost for this alternative in RS. : ");

//Alternative 1 : Under the lake
FC=5*750000;//in Rs
MC=5*12000;//in Rs
PL=5*15000;//in Rs
MCPL=MC+PL;//in Rs
S=5*150000;//in Rs
i=15;//in % per annum
n=15;//in years
//Formula : (A/F,i,n) : (i/100)/(((1+i/100)^n)-1)
//Formula : (A/P,i,n) : ((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)
AE2=FC*((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)+MCPL-S*(i/100)/(((1+i/100)^n)-1);//in RS
disp(AE2,"The Annual equivalent cost for this alternative in RS. : ");
disp("The annual equivalent cost of alternative 1 is less than that of alternative 2. Therefore, select the route around the lake for laying the power line.");
//Note : Calculation in the book is not accurate.