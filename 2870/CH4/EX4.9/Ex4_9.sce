clc;clear;
//Example 4.9

//given data
V1=0.5;
P=400;
T1=27;
I=2;
t=5*60;//converting into s from min
V=120;
Qout=2800/1000;//in kJ
R=0.297;

//from Table A–2a
Cp=1.039;
 
//calculations
P1=P;
We=V*I*t/1000;//in kJ
m=P1*V1/(R*(T1+273));
//Ein - Eout = Esystem
// We,in - Qout = dH =  m (h2 - h1) = m * Cp * (T2 - T1)
T2=(We-Qout)/(m*Cp)+T1;
disp(T2,'the final temperature of nitrogen in C')
