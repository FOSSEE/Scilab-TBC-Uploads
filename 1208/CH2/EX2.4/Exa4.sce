//Exa4
clc;
clear;
close;
//given data is :
n=3;// in years 
disp("Let P=x then A=2*x");
disp("Let r% be the rate of interest");
//formula : A=P(1+r/100)^n;
//putting values
disp("2*x=x(1+r/100)^3");
disp("or");
disp("2=(1+r/100)^3")
//on solving this eqn
r=((2^(1/3))-1)*100;//in %
disp(r,"rate is comtuted :")
disp("suppose in n years the amount x will become 16*x, then by formula")
//16=(1+r/100)^n;
n=log(16)/log(1+r/100);
disp("Time is : "+string(n)+" years");