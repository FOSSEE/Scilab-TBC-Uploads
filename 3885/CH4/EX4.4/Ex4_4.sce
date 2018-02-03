//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 4.4
clc;
clear;
s=poly(0,'s')//defines s as  poly nomial variable
h=syslin('c',(10)/(s*(1+0.4*s)*(1+0.1*s)))//the given transfer function assigned to variable h
scf(1)
bode(h,0.1,100)//frequency range
show_margins(h)

