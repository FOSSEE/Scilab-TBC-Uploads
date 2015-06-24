//Example 15.38
//find roots of characteristic equation

clear;clc;
xdel(winsid());
s=poly(0,'s')
G=s^4+2*s^3+s^2-2*s-1
roots(G)
