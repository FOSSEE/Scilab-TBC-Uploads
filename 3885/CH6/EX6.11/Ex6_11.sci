//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 6.11

clc;
clear; 
s=poly(0,'s')
//given tranfer function g(s)=10/(s*(1+2*s)*(1+s))
h=syslin('c',10/(s*(1+2*s)*(1+s)))
pm=30//given phase margin
w=6.2//given gain cross over frequency in rad/sec
//put s=jw in G(s) magnitude of G(jw) gives A1 and angle of G(jw) gives phi1 at w
A1=2.052
phi=-207.5//in degrees
theta=30-(-27.5)//desired pm -pm of uncompensated system
kd=sind(theta)/w*A1//derivative constant
kp=cosd(theta)/A1//proportional constant
disp(kd,kp,'the values of derivative constant and proportional constant are')
//transfer function of PD controller is (kp+kd*s)
hc=syslin('c', s*((0.343/s)+0.262))
disp(hc,'the transfer function of PD controller is')
hcmp=syslin('c', h*hc)
disp(hcmp,'the transfer function of compensated system is')
