// Example 6_5
// Root locus of system in state space

clear; clc;
xdel(winsid());  //close all windows

// please edit the path
// cd "/<your code directory>/";
exec("rootl.sci");

A = [0 1 0; 0 0 1; -160 -56 -14];
B = [0; 1; -14];
C = [1 0 0];
D = [0];
G = syslin('c',A,B,C,D);
H = clean(ss2tf(G));
disp(H,' transfer function = ');

rootl(G,[-20 -20; 20 20],'Root locus plot of State Space model');
