//Ex 2.11.4
clc;clear;close;
format('v',8);

//Given : 
T=300;//K
m_Si=1.5;//for Si
m_Ge=1.5;//for Ge
EGO_Si=1.21;//volt
EGO_Ge=0.785;//volt
Eta_Si=2;
Eta_Ge=1;
VT=26/1000;//V
disp("Part(i) : ");
d_logIoBYdt_Ge=m_Ge/T+EGO_Ge/(Eta_Ge*T*VT);//per degree C
disp(d_logIoBYdt_Ge,"d(log(Io))/dt for Ge (per degree C) : ");
d_logIoBYdt_Si=m_Si/T+EGO_Si/(Eta_Si*T*VT);//per degree C
disp(d_logIoBYdt_Si,"d(log(Io))/dt for Si (per degree C) : ");
disp("Part(ii) : ");
V=0.2;//volt
dVBYdt_Ge=V/T-Eta_Ge*VT*d_logIoBYdt_Ge
disp(dVBYdt_Ge*1000,"dV/dt for Si (mV per degree C) : ");
V=0.6;//volt
dVBYdt_Si=V/T-Eta_Si*VT*d_logIoBYdt_Si
disp(dVBYdt_Si*1000,"dV/dt for Si (mV per degree C) : ");
