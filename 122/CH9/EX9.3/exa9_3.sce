// Example 9-3
// Conversion from state space to transfer function model

clear; clc;
xdel(winsid());  //close all windows

// please edit the path
// cd "<path to your dependencies>";
// exec("transferf.sci");

A = [0 1 0; 0 0 1; -5.008 -25.1026 -5.03247];
B = [0; 25.04; -121.005];
C = [1 0 0];
D = [0];

H = transferf(A,B,C,D);
disp(H,'H =');         