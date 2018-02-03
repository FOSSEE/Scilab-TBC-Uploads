//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 3.3

clc;
clear; 
s=poly(0,'s')
// the input is unit step signal
h=syslin('c', 600/(s^2+70*s+600))//the closed loop transfer function
disp(h,'the closed loop transfer function')
//standard form od second order system is w^2/s^2+2*zeta*w*s+w^2
//compaing h with the standard form
w=sqrt(600)//natural frequency of oscillation
disp(w,'natural frequency of oscillation in rad/sec')
zeta=70/(2*w)//damping ratio
disp(zeta,'damping ratio')
