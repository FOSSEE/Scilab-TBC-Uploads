clc;clear;
//Example 4.5

//given values
m=0.025;
V=120;
I=0.2;
t=300;//total time taken in sec
P1=300;
Qout=3.7;

//from Table A–5
//at P1 the conditon is sat. vap
h1=2724.9;

//Calculations

//Part - a
//therotical proving

//Part - b
We=V*I*t/1000;//electrical work in kJ
//from eqn 4 -18 i.e derived in earler part
//it states it Ein - Eout = Esystem
// it applies as Win - Qout = H = m (h2 - h1)
h2=(We-Qout)/m+h1;
////from Table A–5
//at h2 we get
P2=300;
T=200;
disp(T,'the final temperature of the steam in C')
