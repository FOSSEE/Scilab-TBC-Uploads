// Calculate the magnitude of power and limiting error
clc;
F=4.58;
L=397;
R=1202*10^-9;
t=60;
P=(2*%pi*9.81*F*L*R)/(t*10^6);
disp(P,'Magnitude of power (W)=')
dF_pu=0.02/F; // per unit error in force
dL_pu=1.3/L; // per unit error in Length
dR_pu=1/R; // per unit error in revolution
dt_pu=0.5/t; // per unit error in time
dP_pu= dF_pu+dL_pu+dR_pu+dt_pu;
dP_le=dP_pu*P;
disp(dP_le,'Magnitude of limiting error in power (W)') 