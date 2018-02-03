//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 6.12

clc;
clear; 
s=poly(0,'s')
//given tranfer function g(s)=100/(s+1)*(s+2)*(s+5)
h=syslin('c',100/(s+1)*(s+2)*(s+5))
pm=60//given phase margin
w=0.5//given gain cross over frequency in rad/sec
//put s=jw in G(s) magnitude of G(jw) gives A1 and angle of G(jw) gives phi1 at w
A1=8.63
phi=-46//in degrees
theta=pm-134//desired pm -pm of uncompensated system
ki=(-w)*sind(theta)/A1//integral constant
kp=cosd(theta)/A1//proportional constant
disp(ki,kp,'the values of integral constant and proportional constant are')
//transfer function of PI controller is (kp+ki/s)
hc=syslin('c', 0.056*(1+0.57*s)/s)
disp(hc,'the transfer function of PD controller is')
hcmp=syslin('c', h*hc)
disp(hcmp,'the transfer function of compensated system is')
