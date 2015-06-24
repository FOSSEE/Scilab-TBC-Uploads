//Example No. 5.37
clc;
clear;
close;
format('v',9);

//Given Data : 
V1=230;//V
N1=870;//rpm
Ia=100;//A
Ra=0.05;//ohm
T=400;//N-m
Eb=V1-Ia*Ra;//V
Vgen=V1+Ia*Ra;//V
N2=N1*Vgen/Eb;//rpm
disp(N2,"Speed in rpm : ");
