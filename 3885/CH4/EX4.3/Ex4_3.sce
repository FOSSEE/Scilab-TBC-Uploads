//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 4.3
clc;
clear;
s=poly(0,'s')//defines s as  poly nomial variable
h=syslin('c',(%e*(0.2*s)/(s*(s+2)*(s+8))))//the given transfer function assiganed to variable h assume K=1
scf(1)
bode(h,0.1,100)//frequency range
show_margins(h)
//calculation of K  
K1=10^(30/20)
disp(K1 ,'when gain margin =2db ' )
K2=10^(24/20)
disp(K2,'the value of K when phase margin is 45')
