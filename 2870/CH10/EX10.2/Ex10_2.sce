clc;clear;
//Example 10.2

//given data
P1=9;
T1=38;
P2=16000;
P3=15.9;
T3=35;
P4=15.2;
T4=625;
P5=15;
T5=600;
nT=0.87;
nP=0.85;
m=15;

//from steam tables
v1=0.001009;
h5=3583.1;
h6s=2115.3;
h4=3647.6;
h3=160.1;

//calculations
Win=v1*(P2-P1)/nP;
Wout=nT*(h5-h6s);
qin=h4-h3;
Wnet=Wout-Win;
nth=Wnet/qin;
disp(nth,'thermal efficiency is');
Wnet=m*Wnet;
disp(Wnet/1000,'power output in MW')
