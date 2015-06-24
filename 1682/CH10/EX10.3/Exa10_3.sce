//Exa 10.3
clc;
clear;
close;
//Alternative A1 : 
disp("Alternative A1 :")
P=3000000;//in Rs.
B=900000;//in Rs.
i=10;//in % per annum
n=5;//in years
//Formula : (A/P,i,n) : ((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)
AE1=P*((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1);//in Rs
disp(AE1,"Annual equivalent of initial cost in Rs. : ");
BCratio=B/AE1;//unitless
disp(BCratio,"BCratio : ");

//Alternative A2 : 
disp("Alternative A2 :")
P=6000000;//in Rs.
B=1500000;//in Rs.
i=10;//in % per annum
n=7;//in years
//Formula : (A/P,i,n) : ((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)
AE2=P*((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1);//in Rs
disp(AE2,"Annual equivalent of initial cost in Rs. : ");
BCratio=B/AE2;//unitless
disp(BCratio,"BCratio : ");
disp("The benefit cost ratio of alternative 2 is more than that of alternative A1. Hence, alternative A2 is to be selected. The comparisoon is made on a 35 years period which is the minimum common multiple of the lives of alternative 1 and 2");