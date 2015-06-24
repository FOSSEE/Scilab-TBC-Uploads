//Example 15.9
//Nyquist plot
clear; clc; 
xdel(winsid());

 s = %s/2/%pi; 
 num=(1);
 den=s^3*(s+1);
 G=syslin('c',num,den)
 clf()
 nyquist(G)
 
