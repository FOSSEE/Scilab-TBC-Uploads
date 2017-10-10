//Example 4_18
clc;funcprot(0);
//Given data
P=86000;// kW
N=180;// r.p.m
H=148;// m
D=3.4;// m
Q=66.5;// m^3/sec
rho=1000;// kg/m^3
g=9.81;// m/s^2

//Calculation
N_u=(N*D/sqrt(H));// r.p.m
P_u=(P/(D^2*H^(3/2)));// kW
Q_u=(Q/(D^2*(sqrt(H))));// m^3/s
n_t=((P*1000)/(rho*g*Q*H));// The turbine efficiency
N_s=((%pi*D*N)/60)*((sqrt(Q*n_t)/(g*H)^(3/4)));// Specific speed
printf('\nThe unit speed,N_u=%0.0f r.p.m\nThe unit power,P_u=%0.2f kW\nThe unit flow,Q_u=%0.3f m^3/sec\nThe specific speed,N_s=%0.3f',N_u,P_u,Q_u,N_s);
printf('\nFor this range of specific speed in the SI system,turbine must be francis type');
