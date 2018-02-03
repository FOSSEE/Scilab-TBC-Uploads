//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 4.6
clc;
clear;
s=poly(0,'s')//defines s as  poly nomial variable
h=syslin('c',(5*(1+2*s))/(1+4*s)*(4+0.25*s))//the given transfer function assigned to variablr h
scf(1)
bode(h,0.1,100)//frequency range
show_margins(h)
