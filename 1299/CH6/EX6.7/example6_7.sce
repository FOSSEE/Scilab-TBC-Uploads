//Example 6.7
// Plotting root locus
clear; clc; 
 xdel(winsid());
 Beta=0
s=%s; 
num=1; 
den=s*(s+1)*(s+Beta); 
G=syslin('c',num/den); 
clf(); 
evans(G); 
axes_handle.grid=[1 1]
mtlb_axis([-4 4 -4 4]);
