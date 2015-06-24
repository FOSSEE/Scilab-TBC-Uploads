// Example 7-21
// Stability Margins

clear; clc;
xdel(winsid());  //close all windows

// please edit the path
// cd "/<your code directory>/";
// exec("shmargins.sci");

s = %s /2 / %pi;  // corrected for frequencies in rad/s
num = 20*(s+1);
den =s * (s + 5) * (s^2 + 2*s + 10);
G = syslin('c',num,den);
shmargins(G);