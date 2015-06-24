//Example No. 5.25
clc;
clear;
close;
format('v',9);

//Given Data : 
V=230;//V
f=50;//Hz
Rf=1.5;//ohm
Kt=0.25;//N-m/A
T=25;//N-m
Kv=0.25;//V-sec/rad
Vdc=2*sqrt(2)*V/%pi;//V
Em=Vdc;//V
Ia=sqrt(T/Kt);//A
disp(Ia,"Average motor current in A : ")
omega_m=(Em-Ia*Rf)/Kv/Ia;//rad/s
N=omega_m*60/2/%pi;//RPM
disp(N,"Motor speed in RPM : ");
