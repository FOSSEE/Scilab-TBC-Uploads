//Exa 4.2
clc;
clear;
close;
//Bid 1: Alpha Elevator Inc.
disp("Bid 1: Alpha Elevator Inc. ");
P=450000;//in Rs
A=27000;//in Rs
i=15;//in % per annum
n=15;//in years
//Formula : (P/A,i,n)=(((1+i/100)^n)-1)/((i/100)*(1+i/100)^n)
PW=P+A*(((1+i/100)^n)-1)/((i/100)*(1+i/100)^n);//in RS
disp(PW,"The present worth for this bid in RS. : ");

//Bid 2: Beta Elevator Inc.
disp("Bid 2: Beta Elevator Inc. ");
P=540000;//in Rs
A=28500;//in Rs
i=15;//in % per annum
n=15;//in years
//Formula : (P/A,i,n)=(((1+i/100)^n)-1)/((i/100)*(1+i/100)^n)
PW=P+A*(((1+i/100)^n)-1)/((i/100)*(1+i/100)^n);//in RS
disp(PW,"The present worth for this bid in RS. : ");
disp("The total present worth cost of bid 1 is less than that of bid 2. Hence bid 1 is to be selected for implementation. That is, the Elevator from Alpha Elevator Inc. is to be purchased and installed in the new building.");