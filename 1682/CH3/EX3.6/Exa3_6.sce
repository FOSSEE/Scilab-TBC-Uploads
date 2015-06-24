//Exa3_6
clc;
clear;
close;
//given data is :
P=1000000;//in rupees
n=15;//in years
i=18;//% per annum
A=P*(((i/100)*(1+i/100)^n)/((1+i/100)^n-1));
disp("The annual equivalent installment to be paid by the company to the bank is : "+string(A)+" Rupees.");