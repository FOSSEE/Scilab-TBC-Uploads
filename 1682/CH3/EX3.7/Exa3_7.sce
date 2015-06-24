//Exa3_7
clc;
clear;
close;
//given data is :
A1=4000;//in rupees
G=500;//in rupees
n=10;//in years
i=15;//% per annum
A=A1+G*(((1+i/100)^n-(i/100)*n-1)/((i/100)*(1+i/100)^n-(i/100)));
F=A*(((1+i/100)^n-1)/(i/100));
disp("At the end of 10th year, the compound amountr of all his payments will be : "+string(F)+" Rupees.");