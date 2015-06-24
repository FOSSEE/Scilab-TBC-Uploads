// Example A-2-11
// Conversion from state space model to transfer function model
// for a Single Input Single Output System 

clear; clc; close;

// Please edit the path below
// cd "/your code directory/";
// exec("transferf.sci");

A = [-1 1 0; 0 -1 1; 0 0 -2];
B = [0; 0; 1];
C = [1 0 0];
D = [0];

Htf = transferf(A,B,C,D);        // Htf is the tranfer function 
disp(Htf,'Htf =');               // polynomial. ie. Htf = num / den
