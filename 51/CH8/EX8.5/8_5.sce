clc;
clear;
D=4;//mm
V=50;//m/sec
l=0.1;//m
d=1.23;//kg/(m^3)
vis=1.79/100000;//N*sec/(m^2)
Re=d*V*(D/1000)/vis;
//if flow is laminar
f=64/Re;
pdiff=f*l*0.5*d*(V^2)/((D/1000)*1000);//kPa
disp("kPa",pdiff,"The pressure drop if the flow is laminar=")
//if flow is turbulent
//roughness=0.0015; hence f=0.028
f1=0.028;
pdiff1=f1*l*0.5*d*(V^2)/((D/1000)*1000);//kPa
disp("kPa",pdiff1,"The pressure drop if flow is turbulent=")

