//Example No. 3.17.2
clc;
clear;
close;
format('v',6);
DT=20;//dB(Transmitter Directivity)
DR=20;//dB(Reciever Directivity)
PT=10;//W(Transmitted Power)
ecdT=1;ecdR=1;//(For lossless antenna)
aT_aR=1;//(For polarization match)
DT=10^(DT/10);//unitless(Transmitter Directivity)
DR=10^(DR/10);//unitless(Reciever Directivity)
Tau_T=0;Tau_R=0;//(Reflection coefficient)
rBYlambda=50;//m
PR=PT*ecdT*ecdR*(1-Tau_T^2)*(1-Tau_R^2)/(4*%pi*rBYlambda)^2*DT*DR*aT_aR^2;//Watts(Power delivered to reciever)
disp(PR,"Power at receiving antenna in Watts : ");
