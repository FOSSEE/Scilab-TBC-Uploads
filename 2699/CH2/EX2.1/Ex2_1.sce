//Ex-2.1 Pg-2.18
clc;
clear;
Vf=0.2; //voltage in volts
Vr=60; //voltage in volts
If=60*10^(-3); //current in  ampere
I0=0.025*10^(-3); //current in  ampere
Rf=Vf/If;//forward resistance
Rr=Vr/I0;//reverse resistance
Rr=Rr*1e-6
printf("the equivalent resistance are Rf=%.3f ohm and Rr=%-.1f M ohm",Rf,Rr)

