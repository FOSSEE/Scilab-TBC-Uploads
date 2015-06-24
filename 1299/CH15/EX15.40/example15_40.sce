//Example 15.40
//Nyquist plot
clear; clc; 
xdel(winsid());

 s = %s/2/%pi; 
 num=(1);
 den=(s^2+0.8*s+1);
 G=syslin('c',num,den)
 clf();
 nyquist(G)
 
