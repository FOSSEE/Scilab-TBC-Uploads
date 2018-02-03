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
zeta=0.8//damping ratio
w=2.5//natural frequency of osciilation in rad/sec
sd=(-zeta*w)+((%i*w)*sqrt(1-zeta^2))
disp(sd,'the dominennt pole is')
d=abs(sd)
disp(d,'the value of d is ')
betaa=phasemag(sd)
disp(betaa,'the value of betaa is;')
h=syslin('c',75/(s+1)*(s+3)*(s+8))//given tranfer function G(s)
//find magnitude and phase of G(s) at s=sd
a=75/((1+sd)*(3+sd)*(8+sd))
ad=abs(a)
disp(ad,'the value of ad is')
phid=phasemag(a)
disp(phid,'the value of phid is')
ess=0.08//steady state error
kv=1/ess//velocity error constant
//the transfer function of PID controller is Gc(s)=kp+kd*s+ki/s
//by definition of velocity error constant applying s=0 in S*Gc(s)*G(s)
ki=12.5/3.125//integeral constant
kd=sind(phid)/(d*ad*sind(betaa))+(ki/(d^2)) //derivative constant
disp(kd,'the derivative  constant is')
kp=(-sind(betaa+phid))/(ad*sind(betaa))-(2*ki*cosd(betaa))/d //proportional constant
disp(kp,'the proportional  constant is')
hc=syslin('c', 0.68*(s^2+4.26*s+5.88)/s)//transfer function of PID controller is kpof +kd*s
disp(hc,'transfer function of PI controller is')
hcmp=syslin('c',h*hc)//transfer function   compensated system 
disp(hcmp,'transfer function   compensated system ')
