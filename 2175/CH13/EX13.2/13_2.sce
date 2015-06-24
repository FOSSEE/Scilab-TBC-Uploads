clc;
spc_grv=0.735;
fc=6.74
m=(fc/3600)*spc_grv;
AMflow=14.5*m;
R=287;
T=288;//K
p=1.013;//bar
V_drawn=AMflow*R*T/(p*10^5)

N=2800/60;
A=%pi*0.057^2;
L=0.09/4;
n=4;
sweptV=A*L*N*n/2;//m^3/min

eff=V_drawn/sweptV;
disp("eff is:")
disp("%",eff*100)
