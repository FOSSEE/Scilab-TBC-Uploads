// Example 7-24
// Polar and Nichols plot with M circles

clear; clc;
xdel(winsid());  //close all windows

// please edit the path
// cd "/<your code directory>/";
// exec("spolarplot.sci");

s = %s;
G = syslin('c',1,s*(s+1));
omega = logspace(-2,2,100);
repf = spolarplot(G,omega);

scf();
black(omega,repf);
chart([1.4],[],list(1,0));
xgrid(color('gray'));
xstring(-150,8,'Mr = 1.4')