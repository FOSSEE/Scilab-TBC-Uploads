//Example 15.13
//Time domain specifications
clear;clc;
xdel(winsid());

J=5.5*10^-2;
f=3.0*10^-4;
disp("wn=sqrt(k/J)=10^3*sqrt(k/5.5)")
disp("zeta=sqrt(4.9*10^-3/k)")
//at critically damped condition "zeta=1", therefore
k=4.09*10^-3
//when k=1.5*10^-2
zeta=sqrt((4.09*10^-3)/(1.5*10^-2))
wn=10^3*sqrt(1.5*10^-2/5.5)
wd=(wn/(2*%pi))*sqrt(1-zeta^2)
//wd=frequency of damped oscillation
Pwd=1/wd
//Pwd=period of damped oscillation
