//Example 15.54
//Nyquist plot
clear; clc; 
xdel(winsid());

 s = %s/2/%pi; 
 num=(2);
 den=s*(s^2+2*s+2);
 G=syslin('c',num,den)
 clf();
 nyquist(G)
 
