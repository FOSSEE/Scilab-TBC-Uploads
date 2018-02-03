//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 5.13

clc;
clear;
s=poly(0,'s')//defines s as  poly nomial variable
h=syslin('c',(230/(s*(s+2)*(s+10))))//the value of K lies between 0 to 240 .the given transfer function assigned to variable h
nyquist(h)
show_margins(h,'nyquist')
//calculation of K
//when -0.00417K=-1the contour passes through -1+j0 and the corrospondig value of K is the limiting value of k for stabilty 
K=1/0.00417
disp(K,'the value of K is')
