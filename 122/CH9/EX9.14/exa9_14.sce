// Example 9-14
// State and ouput controllability and observability

clear; clc;
xdel(winsid());  //close all windows

A = [1 1; -2 -1];
B = [0;1];
C = [1 0];
D = [0];
G =syslin('c',A,B,C,D); ssprint(G);

Cc = cont_mat(A,B); disp(Cc,'state controllability matrix =');
c = [C*B C*A*B];  disp(Oc,'output controllability matrix =');
Ob = obsv_mat(A,C); disp(Ob,'observability matrix =');
