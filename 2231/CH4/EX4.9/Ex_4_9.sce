//Example 4_9
clc;
clear;close;

//Given data: 
V=220;//V
N_NoLoad=1000;//rpm
alfa=0.6;//duty cycle
I=20;//A
Ra=1;//ohm

//Solution :
Eb1=V;//V////at no load
Vin=alfa*V;//V
Eb2=Vin-I*Ra;//V
N=N_NoLoad*Eb2/Eb1;//rpm
disp(N,"Speed of the motor(rpm)");
