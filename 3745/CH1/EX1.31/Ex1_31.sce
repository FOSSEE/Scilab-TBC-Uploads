// Ex 31 Page 374

clc;clear;close;
// Given
G=37;//dB
f1=50;//Hz
f2=18.7*1000;//Hz
BW1=f2;//Hz (f2-f1~=f2)


A1=10**(G/20);//Gain
A3=sqrt(A1);//Gain
RL1BYRL2=A1/A3;//ratio
RL2BYRL1=A3/A1;//ratio
//BW=2*%pi*Cd*RL
BW1BYBW2=RL2BYRL1;
BW2BYBW1=RL1BYRL2;
f2dash=f2*sqrt(sqrt(2)-1);
BW2=BW2BYBW1*f2dash;//Hz
printf("Bandwidth of redesigned amplifier, BW=%.f kHz",BW2/1000)
