//Example 6.2
// Plotting root locus
clear; clc; 
 xdel(winsid());
s=%s; 
num=1; 
den=s*(s+3)^2; 
G=syslin('c',num/den); 
clf(); 
evans(G); 
axes_handle.grid=[1 1]
mtlb_axis([-5 5 -5 5]);
//form the graph it can be seen that the break away point is at "-1"
disp("Break away point=-1")
