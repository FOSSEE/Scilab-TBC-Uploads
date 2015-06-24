//Example 4_3
clc;
clear;close;

//Given data: 
N=800;//rpm
I=20;//A
Ra=0.5;//ohm
Vs=240;//V
Ndash=600;//rpm

//Solution :
Eb_800=Vs-I*Ra;//V
Eb_600=Eb_800*Ndash/N;//V
Vav=I*Ra+Eb_600;//V
alfa=Vav/Vs;//duty cycle
disp(alfa,"(a) Duty cycle");
//Torque reduced to half will reduce I to half
I=I/2;//A
Vav=I*Ra+Eb_600;//V
alfa=Vav/Vs;//duty cycle
disp(alfa,"(b) Duty cycle");
