//Example No. 5.35
clc;
clear;
close;
format('v',9);

//Given Data : 
V1=200;//V
N1=940;//rpm
Ra=0.02;//ohm
Ia=100;//A
N2=500;//rpm
Eb1=V1-Ia*Ra;//V
//Eb1/Eb2=N1/N2
//Eb2=V2-Ia*Ra;//V
V2=Eb1*N2/N1+Ia*Ra;//V
cycle=V2/V1;
disp(cycle,"Duty cycle : ");
