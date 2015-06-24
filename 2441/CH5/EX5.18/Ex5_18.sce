//Example 5.18
clc;clear;close;
format('v',6);
C=2000;//MW///Capacity
L=1000;//MW//Load
H=5;//kWs/KVA
R=2.4;//Hz/puMW//Regulation
f=50;//Hz
delL=1;//%////change in load
delf=1;//%////change in frequency
D=delL/delf*L/f;//MW/Hz
D=D/C;//p.u.MW/Hz
Kp=1/D;//Hz/p.u.MW
Tp=2*H/f/D;//sec
disp("Primary ALFC loop parameters are : ");
disp(D,"D(p.u.MW/Hz)");
disp(Kp,"Kp(Hz/p.u.MW)");
disp(Tp,"Tp(sec)");
