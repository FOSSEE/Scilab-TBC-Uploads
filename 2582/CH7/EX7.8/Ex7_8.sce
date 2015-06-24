//Ex 7.8
clc;clear;close;
format('v',6);
C=680;//pF
f=50;//kHz(Square wave frequency)
D=75/100;//duty cycle
T=1/f*1000;//micro seconds
tHIGH=D*T;//micro seconds
tLOW=T-tHIGH;//micro seconds
RB=(tLOW*10^-6)/(0.69*C*10^-12);//ohm
RA=(tHIGH*10^-6)/(0.695*C*10^-12)-RB;//ohm
disp(RA/1000,"Value of RA(kohm)");
disp(RB/1000,"Value of RB(kohm)");
