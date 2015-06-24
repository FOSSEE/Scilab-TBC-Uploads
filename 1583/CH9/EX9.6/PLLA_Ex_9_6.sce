clc
//Chapter 9:Stability Analysis
//example 8.6 page no 373
//given
zeta=0.8//damping ratio
B=10^3//closed loop bandwidth
X=sqrt(1+2*zeta^2+sqrt(2+4*zeta^2+4*zeta^4))
Ka=(B/X)^2//loop gain
wn=sqrt(Ka)//
wz=wn/(2*zeta)//the system zero
mprintf('the closed loop gain is %3.2e (rad/s)^2 \n wn = %f rad/s \n the system has zero at %d rad/s',Ka,wn,wz)






