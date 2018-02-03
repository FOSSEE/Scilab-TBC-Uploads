//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 6.14

clc;
clear; 
s=poly(0,'s')
//dominent pole sd=-zeta*w=%i*w*sqrt(1-zeta^2)
zeta=0.8//damping ratio
w=2//natural frequency of osciilation in rad/sec
sd=(-zeta*w)+((%i*w)*sqrt(1-zeta^2))
disp(sd,'the dominennt pole is')
d=abs(sd)
disp(d,'the value of d is ')
betaa=phasemag(sd)
disp(betaa,'the value of betaa is;')
h=syslin('c',20/s*(s+2)*(s+4))//given tranfer function G(s)
//find magnitude and phase of G(s) at s=sd
a=20/(sd*(2+sd)*(4+sd))
ad=abs(a)
disp(ad,'the value of ad is')
phid=phasemag(a)
disp(phid,'the value of phid is')
kd=sind(phid)/(d*ad*sind(betaa))//derivative constant
disp(kd,'the derivative  constant is')
kp=(-sind(betaa+phid))/(ad*sind(betaa))//proportional constant
disp(kp,'the integral  constant is')
hc=syslin('c', s*((0.243/s)+0.557))//transfer function of PD controller is kpof +kd*s
disp(hc,'transfer function of PD controller is')
hcmp=syslin('c',h*hc)//transfer function   compensated system 
disp(hcmp,'transfer function   compensated system ')
