//Example 15.41
//Nyquist plot
clear; clc; 
xdel(winsid());

 s = %s/2/%pi; 
 num=(s+2);
 den=(s+1)*(s+1);
 G=syslin('c',num,den)
 clf();
 nyquist(G)
 
