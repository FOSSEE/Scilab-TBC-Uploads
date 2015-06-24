//Example5.9 //to determine open loop gain
clc;
clear;
close;
beta = 0.0120 ; // Feedback transfer function
Af = 80 ; //closed loop gain
A = (Af)/(1-beta*Af) ;
disp('open loop gain is = '+string(A)+'');
