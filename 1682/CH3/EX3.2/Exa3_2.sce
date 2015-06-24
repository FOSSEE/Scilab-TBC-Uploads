//Exa3_2
clc;
clear;
close;
//given data is :
F=100000;//in rupees
n=10;//in years
i=15;//% per annum
P=F/(1+i/100)^n;
disp("The person has to invest : "+string(P)+" Rupees.");
//Note : Ans in the book is not correct.