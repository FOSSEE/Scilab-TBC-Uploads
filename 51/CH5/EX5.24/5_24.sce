clc;
clear;
p=0.4;//kW
dia=0.6;//m
v2=12;//m/s
v1=0;//m/s
//energy equation
Wuseful=(v2^2)/2;
//wshaftin= Wshaftin/m
wshaftin=(p*1000)/(1.23*%pi*(0.6^2)*12/4);
eff=Wuseful/wshaftin;
disp("N.m/kg",Wuseful,"The work to air which provides useful effect-=")
disp(eff,"Fluid mechanical efficiency of this fan=")