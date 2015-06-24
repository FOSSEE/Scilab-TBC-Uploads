// Example 9-4
// Conversion from state space to transfer function model

clear; clc;
xdel(winsid());  //close all windows

// please edit the path
// cd "<path to your dependencies>";
// exec("transferf.sci");

A = [0 1; -25 -4];
B = [1 1; 0 1];
C = [1 0; 0 1];
D = [0 0; 0 0];

H = transferf(A,B,C,D);
disp(H,'H =');       

// Htf is the tranfer function matrix with four transfer functions
// Htf(y1,u1),Htf(y1,u2)
// Htf(y2,u1),Htf(y2,u2)