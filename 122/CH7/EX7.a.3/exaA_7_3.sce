// Example A-7-3
// Bode plot for system in state space

clear; clc;
xdel(winsid());  //close all windows

// please edit the path
// cd "/<your code directory>/";
// exec("transferf.sci");

A = [0 1; -25 -4];
B = [1 1; 0 1];
C = [1 0; 0 1];
D = zeros(2,2);
G = transferf(A,B,C,D);disp(G,"transfer function = ");

subplot(2,2,1);
bode(G(1,1));
subplot(2,2,2);
bode(G(1,2));
subplot(2,2,3);
bode(G(2,1));
subplot(2,2,4);
bode(G(2,2));
