//Caption:Find the developed power and copper loss in the secondary side 
//Exa:12.3
clc;
clear;
close;
f=60;//frequency (in Hertzs)
P_pi=0.5;//pole pitch
F_d=100000;//developed thrust (in Newton)
V_m=200000/3600;//speed of motor (in meter/sec)
P_d=F_d*V_m;
disp(int(P_d/1000),'developed power (in Kilo-Watts)');
V_s=2*P_pi*f;//synchronous speed of the motor (in meter/sec)
s=(V_s-V_m)/V_s;//slip
P_cu=F_d*s*V_s;
disp(int(P_cu/1000),'Copper loss (in Kilo-Watts)=');