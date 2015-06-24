clear;
clc;
printf("\t\t\tExample Number 7.5\n\n\n");
// heated horizontal pipe in air 
// Example 7.5 (page no.-334-335) 
// solution

d = 0.3048;// [m] diameter of pipe
Ts = 250;// [degree celsius] surface temperature of pipe 
Ta = 15;// [degree celsius] temperature of air 
// we first determine the Grashof-prandtl number product and then select the appropriate constants from table 7-1(page no.-328) for use with              equation (7-25) 
// the properties of air are evaluated at the film temperature:
Tf = (Ts+Ta)/2;// [degree celsius]
// the properties of interest are thus
v = 26.54*10^(-6);// [square meter/s]
k = 0.03406;// [W/m degree celsius]
Pr = 0.687;// prandtl number
Beta = 1/(Tf+273);// [K^(-1)]
g = 9.8;// [square meter/s] acceleration due to gravity
Gr_d_into_Pr = g*Beta*(Ts-Ta)*d^(3)*Pr/(v^(2));
// from table 7-1 
C = 0.53;
m = 1/4;
Nu_d = C*(Gr_d_into_Pr)^(m);
h = Nu_d*k/d;// [W/square meter degree celsius]
// the heat transfer per unit length is then calculated from 
q_by_L = h*%pi*d*(Ts-Ta);// [W/m]
printf("free-convection heat loss per unit length is %f kW/m",q_by_L/1000);
