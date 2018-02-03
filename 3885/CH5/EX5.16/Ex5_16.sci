//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 5.16

clc;
clear;
s=poly(0,'s')//defines s as  poly nomial variable
h=syslin('c',(7*(1+0.5*s)*(1+s)/(1+10*s)*(s-1)))//system is stable for K>6.....the given transfer function assigned to variable h
scf()
nyquist(h)
show_margins(h,'nyquist')
//calculation of K
//when -0.01667K=-1the contur passes through -1=j0and the corrospong value of K is the limiting value of k for stabilty 
K=1/0.1667
disp(K,'the value of K is')
disp('the open loop system is unstable')
disp('for stability of closed loop system K>6')

