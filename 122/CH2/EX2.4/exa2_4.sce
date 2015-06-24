// Example2-4
// Conversion from state space to transfer function model

clear;clc;close;

// Please edit the path below
// cd "/your code directory/";
// exec("transferf.sci");

A = [0 1 0; 0 0 1;-5 -25 -5];
B = [0; 25; -120];
C = [1 0 0];
D = [0];
G = transferf(A,B,C,D);
disp(G,'transfer function = ');
