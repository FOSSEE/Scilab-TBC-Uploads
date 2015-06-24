clc
//Chapter 8:Linear model of phase locked loop
//example 8.6 page no 349
//given
//The VCO is designed to oscillate at 100kHz
R1=10.8*10^3
R2=10.8*10^3
C=1*10^-9
N=2//order of filter
fmin=(R2*(C+32*10^-12))^-1//minimum frequency
fmax=fmin+(R1*(C+32*10^-12))^-1//maximum frequency
VDD=9//regulated power supply
Kvco=(2*%pi*(fmax-fmin))/(VDD-2)
Kv=Kvco*(VDD/%pi)/N
zeta=0.707//damping ratio for butterworth filter
wL=Kv*(2*zeta)^2//low pass filter bandwidth
wn=sqrt(Kv*wL)//bandwidth of closed loop system 
mprintf('low pass filter bandwidth is %3.2e rad/s \n bandwidth of closed loop system is %3.2e rad/s',wL,wn)
thetao=(10.6*10^9)//output phase
s=poly(0,"s")
thetar=s^2+s*2.3*10^4+2.66*10^8//input phase
Tf=thetao/thetar
disp(Tf,'the closed loop transfer function is ')
