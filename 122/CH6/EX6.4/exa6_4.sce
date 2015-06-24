// Example 6-4
// Root locus

clear; clc;
xdel(winsid());  //close all windows

// please edit the path
// cd "/<your code directory>/";
// exec("rootl.sci");

s = %s;
D = s*(s + 0.5)*(s^2 + 0.6*s + 10);
H = syslin('c',1,D);
disp(roots(D),'open loop poles =');

rootl(H,[-6 -6; 6 6],'Root locus of G(s) =  1/(s*(s + 0.5)*(s^2 + 0.6*s + 10)');
