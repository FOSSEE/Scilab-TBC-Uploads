//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 4.5
clc;
clear;
s=poly(0,'s')////defines s as  poly nomial variable
h=syslin('c',(20)/(s*(1+3*s)*(1+4*s)))//the given transfer function assigned to variable h
scf()
bode(h,0.1,100)
show_margins(h)
//calculation of gain cross over frequency
disp('from the plot the value of gain cross over frequency is :1.1rad/sec')
