// Exa 2.8
clc;
clear;
close;
// Given data
epsilon_r= 1.5/100;// in neg and pos
A= 10;// in amp
del_A= epsilon_r*A;//in amp
// The magnitude of current being measured is 2.5 A. The relative error at this current is 
A= 2.5;// in amp
epsilon_r= del_A/A;
// Hence, the current under measurement is between the limits of
Am= 2.5;//in amp
// for positive value of epsilon_r
A1= Am*(1+epsilon_r);// in amp
// for positive value of epsilon_r
A2= Am*(1-epsilon_r);// in amp
disp("Limiting values of current under measurement are "+string(A2)+" amp to "+string(A1)+" amp")
LimitingError= del_A/A*100;// in %
disp(LimitingError,"Limiting Error in %")
