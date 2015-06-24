clc;
W=155;
R=0.356;
T=W*R;
disp("N m",T,"Torque is:")

N=2800/60;
bp=2*%pi*N*T/1000;
A=%pi*0.057^2;
L=0.09/4;
n=4;
bmep=bp*2*10^3/(A*L*N*n*10^5)
disp("bar",bmep,"bmep is:")

spc_grv=0.735;
fc=6.74
m=(fc/3600)*spc_grv
Q=44200;
disp(m)
eff_BT=bp/(m*Q)
disp("%",eff_BT*100,"brake thermal efficiency is:");

sfc=m/(bp)*3600;
disp("specific fuel consumption is");
disp("kg/kW h",sfc);
