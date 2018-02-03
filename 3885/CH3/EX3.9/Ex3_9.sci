//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 3.9

clc;
clear; 
s=poly(0,'s')
// the input is 12 unit step signal
h=syslin('c',10/(s^2+2*s+10))
disp(h,'the closed loop transfer function')
//standard form od second order system is w^2/s^2+2*zeta*w*s+w^2
//compaing h with the standard form
w=3.162//natural frequency of oscillation
disp(w,'natural frequency of oscillation in rad/sec')
zeta=2/(2*w)
disp(zeta,' damping ratio is')
mp=exp((-zeta*%pi)/sqrt(1-(zeta)^2))*100//percentage peak overshoot 
disp(mp,'percentage peak overshoot in percentage') 
po=(mp/100)*12//peak over shoot for 12 units
disp(po,'peak over shoot for 12 units')
tp=%pi/(w*sqrt(1-(zeta)^2))
disp(tp,'peak time in seconds')
//constructing a right angle triangle with zeta and sqrt(1-zeta^2)
theta=atan(0.866/0.5)//(1-zeta^2)/zeta
disp(theta,'the value of theta is')
tr=(%pi- theta)/(w*sqrt(1-(zeta)^2))
disp(tr,'the rise time in seconds')
t=1/(zeta*w)//time constant
ts1=3*t//settling time for 5% error
disp(ts1,'settling time for 5% error in seconds')
ts2=4*t//settling time for 2% error
disp(ts2,'settling time for 2% error in seconds')
