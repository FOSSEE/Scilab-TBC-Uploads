//Example5.8 //determine the feedback transfer function of an op-amp for the following condition
clc;
clear;
close;
// a) When open loop gain of 10^5 and the closed loop gain of 100
A = 10^5 ; // open loop gain
Af = 100 ; //closed loop gain
// Feedback transfer function is
beta =(1/Af)-(1/A);
disp('Feedback transfer function is = '+string(beta)+'');
beta = 1/beta ;
disp('OR 1/Beta  is = '+string(beta)+'');

// For an open loop gain of -10^5 and closed loop gain of -100
A = -10^5 ; // open loop gain
Af = -100 ; //closed loop gain
// Feedback transfer function is
beta =(1/Af)-(1/A);
disp('Feedback transfer function is = '+string(beta)+'');
beta = 1/beta ;
disp('OR 1/Beta  is = '+string(beta)+'');

