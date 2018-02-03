//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 5.14

clc;
clear;
s=poly(0,'s')//defines s as  poly nomial variable
h=syslin('c',(0.6*(1+s)^2/(s^3)))//the system is stable for K vlaue greater than 0.5. the given transfer function assigned to variable h
scf()
nyquist(h)
show_margins(h,'nyquist')
//when K>0.5 -1+j0 is encircled in both clockwise and anticlockwise direction one time. so the system is stable
disp('the system is stable for K vlaue greater than 0.5.')
