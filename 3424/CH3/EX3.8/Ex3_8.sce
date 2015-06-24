clc
//Initialization of variables
P1 = (3+101)*10^3 // N/m^2
R = 286.9 // N.m/Kg.K
T1 = 15+273 // K
Pg = 3.0*10^3 // N/m^2
d = 0.01 // m 
d1 = 0.03// m
//Calculations
D = P1/(R*T1) // Kg/m^3
V3 = ((2*Pg)/D)^0.5 // m/s
Q = %pi*((d)^2)*(V3/4) //m^3/s
V2 = V3*(d/d1)^2
P2 = Pg - 0.5*(D)*(V2)^2
// Results
printf(" the flow rate is %.5f m^3/s ",Q)
printf(" \n the pressure within the hose is %.f N/m^2 ",P2)
