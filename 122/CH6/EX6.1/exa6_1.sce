// Example 6-1
// Root Locus

clear; clc;
xdel(winsid());  //close all windows

// please edit the path
// cd "/<your code directory>/";
// exec("rootl.sci");

s = %s;
D = s * (s + 1) * (s + 2);
H = syslin('c',1,D);

rootl(H,[-4 -3; 2 3],'Root locus of G(s) = 1/(s*(s + 1)*(s + 2))');
