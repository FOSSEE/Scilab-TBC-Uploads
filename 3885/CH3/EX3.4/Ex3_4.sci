//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 3.4

clc;
clear; 
s=poly(0,'s')
// the input is unit step signal
h=syslin('c',100/(s^2+10*s+100))//the value of k is 100
k=100
zeta=0.5//given damping ratio
disp(k,'the value of k is')
disp(h,'the closed loop transfer function')
//standard form od second order system is w^2/s^2+2*zeta*w*s+w^2
//compaing h with the standard form
w=sqrt(k)//natural frequency of oscillation
disp(w,'natural frequency of oscillation in rad/sec')
mp=exp((-zeta*%pi)/sqrt(1-(zeta)^2))*100//percentage peak overshoot 
disp(mp,'percentage peak overshoot in percentage')
tp=%pi/(w*sqrt(1-(zeta)^2))
disp(tp,'peak time in seconds')
