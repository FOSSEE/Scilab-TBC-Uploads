clc
//Chapter 8:Linear model of phase locked loop
//example 8.2 page no 316
//given
zeta=0.707//damping ratio for butterworth filter
Kv=10*%pi//bandwidth
wL=Kv*(2*zeta)^2//low pass filter bandwidth
wn=sqrt(Kv*wL)//bandwidth of closed loop system 
tr=2.2/wn//rise time
mprintf('low pass filter bandwidth is %f rad/s \n bandwidth of closed loop system is %f rad/s \n the system rise time is %3.2e s',wL,wn,tr)
