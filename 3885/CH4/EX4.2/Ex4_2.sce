//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 4.2
clc;
clear;
s=poly(0,'s')//defines s as  poly nomial variable
h=syslin('c',(75*(1+0.2*s))/(s*(s^2+16*s+100)))//the given transfer function assigned to variable h
scf(1)
bode(h,0.1,100)//frequency range
show_margins(h)
a=g_margin(h)
b=p_margin(h)
disp(a,b,'the gain margin and phase margin  are')
