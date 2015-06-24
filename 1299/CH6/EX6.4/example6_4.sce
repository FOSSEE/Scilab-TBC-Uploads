//Example 6.4
// Plotting root locus
clear; clc; 
 xdel(winsid());
s=%s; 
num=-(s+2); 
den1=(s+1+(%i*sqrt(3)))*(s+1+(%i*sqrt(3))); 
//upon simplification the denominator becomes
den2=(s^2+2*s+4)
G=syslin('c',num/den2); 
clf(); 
evans(G); 
axes_handle.grid=[1 1];
mtlb_axis([-3 3 -3 3]);
