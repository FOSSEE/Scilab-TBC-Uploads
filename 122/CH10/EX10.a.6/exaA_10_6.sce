// Example A-10-6
// Gain matrix determination

clear; clc;
xdel(winsid());  //close all windows


A = [0 1 0; 0 0 1;-6 -11 -6];
B = [0; 0; 10];

P = [-2 + %i*2*sqrt(3) , -2 - %i*2*sqrt(3), -10];
K = ppol(A,B,P);   disp(K,'K =');

