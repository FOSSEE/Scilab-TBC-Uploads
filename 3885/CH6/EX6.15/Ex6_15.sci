//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 6.15

clc;
clear; 
s=poly(0,'s')
//dominent pole sd=-zeta*w=%i*w*sqrt(1-zeta^2)
zeta=0.9//damping ratio
w=2.5//natural frequency of osciilation in rad/sec
sd=(-zeta*w)+((%i*w)*sqrt(1-zeta^2))
disp(sd,'the dominennt pole is')
d=abs(sd)
disp(d,'the value of d is ')
betaa=phasemag(sd)
disp(betaa,'the value of betaa is;')
h=syslin('c',4/(s+1)*(s+5))//given tranfer function G(s)
//find magnitude and phase of G(s) at s=sd
a=4/((1+sd)*(5+sd))
ad=abs(a)
disp(ad,'the value of ad is')
phid=phasemag(a)
disp(phid,'the value of phid is')
ki=-(d*sind(phid))/(ad*sind(betaa))//integral  constant
disp(ki,'the integral   constant is')
kp=(-sind(betaa+phid))/(ad*sind(betaa))-(2*ki*cosd(betaa))/d //proportional constant
disp(kp,'the proportional  constant is')
hc=syslin('c', 2.02*(s+1.19)/s)//transfer function of PD controller is kpof +kd*s
disp(hc,'transfer function of PI controller is')
hcmp=syslin('c',h*hc)//transfer function   compensated system 
disp(hcmp,'transfer function   compensated system ')
