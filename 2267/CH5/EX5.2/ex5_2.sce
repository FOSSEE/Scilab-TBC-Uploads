//Part A Chapter 5 Example 2
clc;
clear;
close;
T1=400+273;//K
T2=15+273;//K
Q12=200;//kJ(Q1-Q2=200)
Q1BYQ2=T1/T2;
Q2=Q12/(Q1BYQ2-1);//kJ
Q1=Q1BYQ2*Q2;//kJ
disp("Heat to be supplied = "+string(Q1)+" kJ");
