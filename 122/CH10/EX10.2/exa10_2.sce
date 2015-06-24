// Example 10-2
// Gain matrix using ppol and Ackermanns formula

clear; clc;
xdel(winsid());  //close all windows

// please edit the path
// cd "<path to dependencies>";
// exec("ackermann.sci");

A = [0 1 0; 0 0 1;-1 -5 -6];
B = [0; 0; 1];
P = [-2 + %i*4 , -2 - %i*4, -10];
K = ackermann(A,B,P);disp(K,'using ackermanns formula K = ');
K = ppol(A,B,P);   disp(K,'using ppol function K = ')

// ackermann's formula is computationally tedious 
// and hence avoided
