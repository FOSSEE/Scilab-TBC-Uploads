clc;
clear all;
disp("heat loss rate")
L=0.012;// m
Thf=95;// degree C
Tcf=15;// degree C
k=50;// W/(m*C)
hhf=2850;// W/(m^2*C)
hcf=10;// W/(m^2*C)
U=1/(1/hhf+1/hcf+L/k);
q=U*(Thf-Tcf);
disp("W/m^2",q,"rate of heat loss per m^2 of the tank surface area = ")
//q=hcf*(t2-tcf)
t2=q/hcf+Tcf;
disp("degree C",t2,"temperature of the outside surface of the tank = ")
