clc;
clear all;
disp("heat transfer rate")
A=1;
thf=100;// temperature of hot fluid
tcf=25;// temperature of cold fluid
L=4*10^(-3);// thickness of blade
k=95.5;//W/(m*C)
hhf=14500;//W/(m^2*C) heat transfer coefficients
hcf=2250;//W/(m^2*C) heat transfer coefficients
Rthhf=(1/hhf);
Rthcf=(1/hcf);
Rth12=L/k;
Rtotal=Rthhf+Rthcf+Rth12;
q=(thf-tcf)/Rtotal;//W/m^2 rate of heat transfer per unit area
disp ("W/m^2",q,"i)rate of heat transfer per unit area = ")
//Q=U*A*(thf-tcf)/L;
U=q/(A*(thf-tcf));
disp("W/(m^2*C)",U,"ii)overall heat transfer coefficient =")
//q=delT/Rhfthhf
delThf=q*Rthhf;
disp("degree C",delThf,"temperature drop in vapour film =")
//q=delT12/Rth12
delT12=q*Rth12;
disp("degree C",delT12,"temperature drop in metal =")
//q=delTcf/Rthcf
delTcf=q*Rthcf;
disp("degree C",delTcf,"temperature drop in water film =")

