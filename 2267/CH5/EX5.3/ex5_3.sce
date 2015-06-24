//Part A Chapter 5 Example 3
clc;
clear;
close;
T1=42+273;//K
T2=4+273;//K
Q2=2;//kJ/s
Q1=T1/T2*Q2;//kJ/s
Pin=Q1-Q2;//kJ/s
disp("Power required = "+string(Pin)+" kJ/s");
