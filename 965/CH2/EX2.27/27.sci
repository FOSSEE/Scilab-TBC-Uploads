clc;
clear all;
disp("thickness of layer")
L=0.55;//m
kA=2.3;//W/(m*K)
kB=0.2;//W/(m*K)
thf=900;// degree C
t2=520;// degree C
hhf=230;//W/(m^2*C)
hcf=46;//W/(m^2*C)
tcf=30;// degree C
//q=(thf-t2)/(1/hhf+La/kA)=(t2-tcf)/(1/hcf+(0.55-La)/kB)
La=1051.13/2113;//m
Lb=L-La;//m
disp ("mm",La*10^3,"La=")
disp ("mm",Lb*10^3,"Lb=")
q=(thf-t2)/(1/hhf+La/kA);
disp("W/m^2",q,"rate of heat transfer = ")

