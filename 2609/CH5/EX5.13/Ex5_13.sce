//Ex 5.13
clc;
clear;
close;
format('v',4);
t2=50;//ms(After open the switch)
R=40;//kohm
C=0.2;//micro F
V2=3;//V
Vin=5;//V
//For Ideal op-amp V1=V2
t1=0;//s
Vout1=V2;//V
V1=V2;//V
t2=t2*10^-3;//s
Vout2=-1/(R*10^3*C*10^-6)*integrate('Vin-V1','T',0,t2)+Vout1;//V
//Here we have t=0 switch closed Vout=3V 
t=[t1*1000 t2*1000];//ms
Vout=[Vout1 Vout2];//V
plot(t,Vout);
title('Vout Vs time after switch is opened');
xlabel('t(ms)');
ylabel('Vout(V)');
