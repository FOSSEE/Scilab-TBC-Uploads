//Example No. 5.30
clc;
clear;
close;
format('v',9);

//Given Data : 
V=230;//V
N=870;//rpm
Ia=100;//A
Ra=0.05;//ohm
T=400;//N-m
E=V-Ia*Ra;//V
Vgen=V+Ia*Ra;//V
N2=N*Vgen/E;//rpm
disp(N2,"Motor speed in rpm : ");
