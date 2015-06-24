//Part A Chapter 5 Example 5
clc;
clear;
close;
T1=25+273;//K
T2=-1+273;//K
Q2=125;//MJ/h
Q1BYQ2=T1/T2;
COP_HP=1/(Q1BYQ2-1);
W=Q2/COP_HP;//MJ/h
W=W*10^3/3600;//kW
disp("Minimum power required = "+string(W)+" kW");
