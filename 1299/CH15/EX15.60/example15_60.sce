//Example 15.60
//root locus
clear;clc;
xdel(winsid());

s=%s;
//substituting "a=15" in the numerator
num=2*(s+15);
den=s*(s+2)*(s+10);
G=syslin('c',num/den);
evans(G);
axes_handle.grid=[1 1]
mtlb_axis([-5 5 -5 5]);
