//Example5.10  // To Determine the percent of change in the closed loop gain Af of feedback op-amp circuit
clc;
clear;
close;
A = 10^5 ;  // open loop gain
Af = 50 ;  // close loop gain
beta = 0.01999 ;  // feedback transfer function
dA = 10^4 ;  // the change in the open llop gain 

// close loop gain
dAf = ((dA)/(1+dA*beta));
disp('close loop gain dAf is = '+string(dAf)+'');

// the percent change of closed loop gain 
%dAf = (((Af-dAf)/(Af))*100);
disp('the percent change of closed loop gain dAf is = '+string(%dAf)+'%');
