clc

Popt=5*10^12//phtons/sec
n=0.8
un=2500//cm^2/Vs
epsilon=5000//V/cm
L=10*10^-4//cm
q=1.6*10**-19 //C
tau=5*10^-10//sec
Ip=q*n*Popt*(un*tau*epsilon)/L
disp(Ip,"Ip in A is= ")
gain=(un*tau*epsilon)/L
disp(gain,"gain is= ")

