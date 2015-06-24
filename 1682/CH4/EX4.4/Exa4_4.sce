//Exa 4.4
clc;
clear;
close;
//Alternative 1 : 
disp("In 1st alternative down payment : Rs. 16,00,000");
//Alternative 2 : 
P0=400000;//in Rs
P=200000;//in Rs
i=18;//in % per annum
n=10;//in years
//Formula : (P/A,i,n) : (((1+i/100)^n)-1)/((i/100)*(1+i/100)^n)
PW=P0+P*(((1+i/100)^n)-1)/((i/100)*(1+i/100)^n);//in RS
disp(PW,"The present worth of alternative 2 in RS. : ");
disp("The present worth of 2nd alternative is less than that of first one i.e., complete downpayment of Rs. 1600000. Hence, select 2nd alternative.");