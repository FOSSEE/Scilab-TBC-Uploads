//Exa3_5
clc;
clear;
close;
//given data is :
A=1000000;//in rupees
n=20;//in years
i=15;//% per annum
P=A*(((1+i/100)^n-1)/((i/100)*(1+i/100)^n));
disp("The amount of reserve which must be setup now is : "+string(P)+" Rupees.");
//Note : Ans in the book is not correct.