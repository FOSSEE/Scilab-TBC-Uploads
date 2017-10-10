// Ex 10 Page 350

clc;clear;close;
// Given

V=400;//V
f=50;//Hz
n=3;//no of phase
R=100;//ohm

//Star connection
Vph=V/sqrt(n);//V
Iph=Vph/R;//A
IL=Iph;//A
cos_fi=1;// for only resitor load
P=sqrt(3)*V*IL*cos_fi/1000;//kW
printf("Star Connection : P=%.1f kW",P)
//Delta Connection

Vph=V;//V
Iph=Vph/R;//A
IL=sqrt(3)*Iph;//A
VL=Vph;//V
P=sqrt(3)*VL*IL*cos_fi/1000;//kW
printf("\n Delta Connection : P=%.1f kW",P)
