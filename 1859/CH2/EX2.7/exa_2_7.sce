// Exa 2.7
clc;
clear;
close;
// Given data
Am= 500;// in watt
epsilon_r= 1.5/100;// in neg and pos
// for positive value of epsilon_r
A1= Am*(1+epsilon_r);// in watt
// for positive value of epsilon_r
A2= Am*(1-epsilon_r);// in watt
disp("Range of reading of wattmeter is "+string(A2)+" watt to "+string(A1)+" watt")
