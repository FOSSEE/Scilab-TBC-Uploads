//Part A Chapter 5 Example 6
clc;
clear;
close;
T1=35+273;//K
T2=-15+273;//K
Q2=140.8;//kW
Q1BYQ2=T1/T2;
Carnot_COP=1/(Q1BYQ2-1);
Actual_COP=Carnot_COP/4;
W=Q2/Actual_COP;//kW
disp("Power required = "+string(W)+" kW");
//Answer is not accurate in the book.
