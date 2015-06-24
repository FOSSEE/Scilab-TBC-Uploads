//Example No. 5.24
clc;
clear;
close;
format('v',9);

//Given Data : 
f=400;//Hz
V=200;//V
T=30;//N-m
N=1000;//rpm
R=0.2;//ohm
L=2;//mH
Kv=1.5;//V-sec/rad
Kt=1.5;//N-m/A
Ia=T/Kt;//A
omega=N*2*%pi/60;//rad/s
Eb=Kv*omega;//V
alfa=(Eb+Ia*R)/V;
T=1/f*1000;//ms
Ton=alfa*T;//ms
Toff=T-Ton;//ms
Imax=V/R*[(1-exp(-alfa*T*10^-3*R/(L*10^-3)))/(1-exp(-T*10^-3*R/(L*10^-3)))]-Eb/R;//A
disp(Imax,"(a) Maximum motor armature current in A : ");
Imin=V/R*[(exp(alfa*T*R/L)-1)/(exp(T*R/L)-1)]-Eb/R;//A
disp(round(Imin),"(a) Minimum motor armature current in A : ");
Iexc=Imax;//A
disp(Iexc,"(b) Excursion of  armature current in A : ");
