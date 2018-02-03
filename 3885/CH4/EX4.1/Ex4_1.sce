//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 4.1
clc;
clear;
s=poly(0,'s')//defines s as  poly nomial variable
h=syslin('c',(s^2)/((1+0.2*s)*(1+0.02*s)))//the given transfer function assigned to variable h .Assume the value of K as 1
scf(1)
bode(h,0.1,100)//frequency range
show_margins(h)
//calculation of system gain K
K=10^(-28/20)//value of K is calculated by equating 20logK to -28db
disp(K,'the value of gain')
