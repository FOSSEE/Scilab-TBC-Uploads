// Example 9-15
// Observability

clear; clc;
xdel(winsid());  //close all windows

A = [0 1 0; 0 0 1; -6 -11 -6];
B = [0; 0; 1];
C = [4 5 1];

Ob = obsv_mat(A,C); 
disp(Ob,'observability matrix =');
disp(clean(det(Ob)) , 'det(Ob) =');
// system is not completely observable
