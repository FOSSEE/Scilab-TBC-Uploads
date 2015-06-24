// Example 11.4
format('v',5)
clc;
clear;
close;
// given data
h_fe= 120;// unit less
h_ie= 3.5*10^3;//in Ω
r_L= 2*10^3;// in Ω
h_oe= 8.5*10^-6;// in S
h_re= 1.3*10^-4;// unit less
// The voltage gain 
A= h_fe*r_L/(h_ie*(1+h_oe*r_L)-h_re*h_fe*r_L)
disp(A,"The voltage gain is : ")
