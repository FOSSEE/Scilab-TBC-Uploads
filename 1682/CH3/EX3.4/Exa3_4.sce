//Exa3_4
clc;
clear;
close;
//given data is :
F=500000;//in rupees
n=15;//in years
i=18;//% per annum
A=F*((i/100)/((1+i/100)^n-1));
disp("The annual equal ammount which must be deposited for 15 years is : "+string(A)+" Rupees.");