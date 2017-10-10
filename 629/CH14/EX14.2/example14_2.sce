clear
clc
//Example 14.2 DISCHARGE AND POWER FOR AXIAL-FLOW PUMP
g=9.81; //[m/s^2]
D=0.356; //[m]
n=600/60 //speed[rps]
rho=10^3; //density[Kg/m^3]
H=2; //[m]
CH=H/(D*n*g)
//From fig.14.6
CQ=0.4;
CP=0.72;
//Discharge
Q=CQ*n*D^3 //[m^3/s]
printf("\nThe discharge of water, Q = %.3f m^3/s.\n",Q)
//Power
P=CP*rho*D^5*n^3/10^3 //[kW]
printf("\nThe power required for these conditions, P = %.2f kW.\n",P)