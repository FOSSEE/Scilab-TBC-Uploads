//Example 8.2
//Nyquist plot
clear; clc; 
xdel(winsid());

 s = %s/2/%pi;
 //since the value of "K" and "tau" in the given transfer function is constant
 // thus assuming "K=1" and "tau=1" 
 //the resulting transfer function is,
 num2=(1);
 den2=(s+1)^2;
 G=syslin('c',num2,den2)
 clf();
 nyquist(G)
 
