// Example 10-4
// Design of servo system with integrator in the plant

clear; clc;
xdel(winsid());  //close all windows
mode(0)

// please edit the path
// cd "<path to dependencies>";
// exec("plotresp.sci");

s = %s;
Gp = cont_frm( 1, s*(s+1)*(s+2));
A = Gp.A
B = Gp.B
J = [-2 + %i*2*sqrt(3) , -2 - %i*2*sqrt(3), -10];
K = ppol(A,B,J)

A1 = A - B*K;
B1 = [0; 0; 160];
C1 = [1 0 0];
D1 = [0];

G = syslin('c',A1,B1,C1,D1); ssprint(G);

t = 0:0.01:5;
u = ones(1,length(t));
plotresp(u,t,G,'Unit-Step Response of servo system');