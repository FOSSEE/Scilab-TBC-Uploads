clc
//initialization of new variables
clear
Q=6 //L/min
D=3 //cm
K=0.32
g=9.8 //m/s^2
rho=1000 //kg/m^3
//calculations
R=D/2*10^-2
S=%pi*R^2
Q=Q/60*10^-3
Uav=Q/S
Hf=K*Uav^2/(2*g)
dP=Hf*rho*g
//results
printf('The pressure drop is %.2f N/m^2',dP)
printf('\n Head loss is %.2e m',Hf)
