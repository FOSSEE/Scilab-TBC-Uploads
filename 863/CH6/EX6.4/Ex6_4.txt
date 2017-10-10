//Caption:Calculate R1,R2 and Actual UTP and LTP
//Ex6.4
clc;
clear;
close;
u=3//Upper trigger voltage(in volts)
Ib=500//Max base current(in nA)
Vcc=15//Collector voltage(in volts)
i=Ib*0.1
R2=u*1000/i
I=u/R2
Vo=Vcc-1
Vr1=Vo-u
R1=Vr1/I
utp=Vo*R2/(R1+R2)
ltp=-utp
disp(ltp,utp,R2,R1,'Circuit components R1,R2(in kilo ohm) and actual UTP and LTP(in volts)=')