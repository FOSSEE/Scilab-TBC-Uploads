//Example 15.49
// Plotting root loci of the transfer function k/s*(s+4)*(s^2+4*s+20)
clear; clc; 
 xdel(winsid());
s=%s; 
num=(1); 
den=s*(s+3)*(s^2+2*s+2); 
G=syslin('c',num/den); 
clf; 
evans(G); 
mtlb_axis([-5 5 -5 5]);
