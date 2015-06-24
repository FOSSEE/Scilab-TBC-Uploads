// Example 9-2
// Transformations in state space 

clear; clc;
xdel(winsid());  //close all windows
mode(0);

A = [0 1 0; 0 0 1; -6 -11 -6];
B = [0; 0; 0]; 
C = [1 0 0];
D = [0];
H = syslin('c',A,B,C,D); 
disp('non standard form =');ssprint(H);

e = spec(A)'   // eigen values
P = [ones(1,3); e; e.^2] // P is the transformation matrix
A1 = diag(e);
B1 = inv(P)* B;
C1 = C * P;
D1 = D;
H1 = syslin('c',A1,B1,C1,D1); 
disp('standard form =');ssprint(H1);
