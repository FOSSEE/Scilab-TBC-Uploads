clc;
clear all;
disp("cylindrical thermometer ")
R=3/2000;//m
h=55;//W/m^2.C
k=8.8;// W/m.C
a=0.0166;// m^2/h
c=420;// J/kg.C
L=1;//m

As=2*3.1416*R*L;//m^2
V=3.1416*(R^2);//m^3


tau1=k*V*3600/(h*a*As);
disp("s",tau1,"tau*  =")
disp("for temperature to reach half its final")
//theta/thetai=0.5=exp(-tau/tau1)
tau= -tau1*log(0.5);
disp("s",tau,"time required to temperature to half its final value t =")
