// Example A-2-12
// Conversion from state space model to transfer function model
//            for a multiple input multiple output system 

clear; clc; close;

// Please edit the path below
// cd "/your code directory/";
// exec("transferf.sci");

A = [0 1; -25 -4];
B = [1 1; 0 1];
C = [1 0; 0 1];
D = [0 0; 0 0];

Htf = transferf(A,B,C,D)     // Htf is the tranfer function matrix,
disp(Htf,'Htf =');           // with four transfer functions  - 
                             // Htf(1,1),Htf(1,2),Htf(2,1),Htf(2,2);
