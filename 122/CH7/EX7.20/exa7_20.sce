// Example 7-20
// Gain and phase margins for different K

clear; clc;
xdel(winsid());  //close all windows

// please edit the path
// cd "/<your code directory>/";
// exec("shmargins.sci");

s = %s /2 / %pi;  // corrected for frequencies in rad/s
K = 10;
G = syslin('c', K, s*(s+1)*(s+5));
shmargins(G);
scf();
K = 100;
G = syslin('c', K, s*(s+1)*(s+5));
shmargins(G);