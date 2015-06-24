//Example 15.57
//determination of zeta & wn
clear;clc;
xdel(winsid());

s=%s
num=10;
den=s^2+2*s+10;  //since k=0
G=num/den;
B=coeff(den)
//wn= undamped natural ftrquency
wn=sqrt(B(:,1))
// zeta= damping ratio
zeta=2/(2*sqrt(wn))
// when time t tends to infinity, static error viz.ess tends to 0.
ess=0
// when "zeta=0.65" i.e.(zeta1=0.65)
zeta1=0.65
k0=2*zeta1*wn-2
