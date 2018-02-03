//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 6.13

clc;
clear; 
s=poly(0,'s')
//given tranfer function g(s)=100/(s+1)*(s+2)*(s+10)
h=syslin('c',100/(s+1)*(s+2)*(s+10))
pm=45//given phase margin
w=4//given gain cross over frequency in rad/sec
//put s=jw in G(s) magnitude of G(jw) gives A1 and angle of G(jw) gives phi1 at w
A1=0.5
phi=-161//in degrees
theta=pm-19//desired pm -pm of uncompensated system
ess=0.1//steady state error for ramp  input
kv=1/ess//velocity errpr constant 
//the transfer function of PID controller is Gc(s)=kp+kd*s+ki/s
//by definition of velocity error constant applying s=0 in S*Gc(s)*G(s)
ki=2//integeral constant
disp(ki,'the value of integral constant')
kd=((sind(theta)/(w*A1))+(ki/w^2))//derivative constant
kp=cosd(theta)/A1//proportional constant
disp(kd,kp,'the values of proportional   constant and derivative  constant  are')
hc=syslin('c',0.344*(s^2+5.23*s+5.81)/s)
disp(hc,'the transfer function of PID controller is')
hcmp=syslin('c',h*hc)
disp(hcmp,'the transfer function of compensated system is')
