//Exa8
clc;
clear;
close;
//given data is :
P=2000;//in rupees
A=2662;//in rupees
r=10;//% per annum
//formula : A=P(1+r/100)^n;
//solving for n
 n=log(A/P)/log(1+r/100);
 disp("The time in which Rs.2000 will rise to Rs. 2662 is  : "+string(n)+" years.")