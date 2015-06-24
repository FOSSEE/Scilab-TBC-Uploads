//Part A Chapter 6 Example 8
clc;
clear;
close;
T1=1800;//K
T2=300;//K
W=2;//MW
Q1=5;//MW
Q2=Q1-W;//MW
deltaS=(-Q1/T1+Q2/T2);//MW/K
W_lost=T2*deltaS;//MW
disp("Work lost = "+string(W_lost)+" MW");
