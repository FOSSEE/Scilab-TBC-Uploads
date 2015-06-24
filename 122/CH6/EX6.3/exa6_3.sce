// Example 6-3
// Root locus

clear; clc;
xdel(winsid());  //close all windows

// please edit the path
// cd "/<your code directory>/";
// exec("rootl.sci");

s = %s;
N = s + 3;
D = s * (s + 1) * (s^2 + 4*s +16);
H = syslin('c',N,D);
disp( roots(D) ,'open loop poles = ');
disp( roots(N) ,'open loop zeros = ');

rootl(H,[-6 -6; 6 6],'Root locus of G(s) = (s + 3)/(s * (s + 1) * (s^2 + 4*s +16) )');
