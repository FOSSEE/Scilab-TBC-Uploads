clear
clc
//Example 14.5 HEAD, DISCHARGE, AND POWER OF CENTRIFUGAL PUMP
g=9.81; //[ft/s^2]
n=400/60 //speed[rps]
D=1.98//diameter[m]
//From fig.14.10
CQ=0.12;
CH=5.2;
CP=0.69;
H=CH*D^2*n^2/g //head[ft]
Q=CQ*n*D^3 //discharge[m^3/s]
rho=10^3; //density[Kg/m^3]
P=CP*rho*D^5*n^3/10^3 //power[kW]
printf("\n At maximum efficiency, the expected values of\n  Head        = %.1f m\n  Discharge   = %.2f m^3/s\n  Power       = %.f kW\n",H,Q,P)