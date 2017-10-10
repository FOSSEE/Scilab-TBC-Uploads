clear
clc
//Example 14.3 HEAD AND POWER FOR AXIAL FLOW PUMP
g=9.81; //[m/s^2]
Q=0.127; //[m^3/s]
n=13.3; //[rps]
D=0.3; //[m]
rho=10^3; //density[Kg/m^3]
//Discharge coefficient
CQ=Q/(n*D^3)
//From fig.14.6
CH=1.7;
CP=0.8;
//Head produced
H=CH*D^2*n^2/g //[m]
printf("\nThe head developed is H = %.2f m.\n",H)
//Power produced
P=CP*rho*D^5*n^3/10^3 //[kW]
printf("\nThe power required for the operation = %.2f kW.\n",P)