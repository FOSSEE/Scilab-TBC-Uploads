clc;
clear all;
disp("heat flux calculation")
La=0.2;//m thickness of chrome bricks
Lb=0.1;//m thickness of kaolin bricks
Lc=0.1;//m thickness of masonary bricks
kA=1.25;//W/(m*C) 
kB=0.074;//W/(m*C) 
kC=0.555;//W/(m*C) 
hhf=74;//W/(m^2*C) 
thf=1670;// degree C temperature of hot fluid
t4=70;// temperature of outer surafce
q= (thf-t4)/(1/hhf+La/kA+Lb/kB+Lc/kC); 
disp("W/m^2",q,"rate of heat flow per m^2 = ")
//q=(thf-t1)/(1/hhf)=(t1-t2)/(La/kA)=(t2-t3)/(Lb/kB)
t1=thf-q/hhf;
disp ("degree C",t1,"temperature t1 = ")
t2=t1-q*La/kA;
disp ("degree C",t2,"temperature t2 = ")
t3=t2-q*Lb/kB;
disp ("degree C",t3,"temperature t3 = ")
