//Example sec 6.2.2
// location of root locus in between poles and zeros.
clear; clc; 
 xdel(winsid());
s=%s; 
num=((s+1)*(s+2)); 
den=(s*(s+3)*(s+4)); 
G=syslin('c',num/den); 
clf(); 
evans(G); 
axes_handle.grid=[1 1]
mtlb_axis([-5 5 -5 5]);
