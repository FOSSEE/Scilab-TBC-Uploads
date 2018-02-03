//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 5.28

clc;
clear;
s=poly(0,'s')//defines s as  poly nomial variable
h=syslin('c',(s+2)/(s+1)*(s-1))//the given transfer function assigned to variable h
scf()
nyquist(h)
show_margins(h,'nyquist')
disp('open loop system is unstable')
disp('closed loop system is stable;' )
