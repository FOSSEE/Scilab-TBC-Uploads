clc;
warning("off");
printf("\n\n example7.8 - pg293");
// given
Q=0.03;  //[m^3/sec] - volumetric flow rate
id=7;  //[cm] - inside diameter
deltaz=-7;  //[m] - length of pipe
T1=25;  //[degC] - lowere side temperature
T2=45;  //[degC] - higher side temperature
g=9.81;  //[m/sec^2] - acceleration due to gravity
deltaP=4*10^4;  //[N/m^2] - pressure loss due to friction
p=1000;  //[kg/m^3] - density of water 
w=Q*p;
C=4184;  //[J/kg*K) - heat capacity of water
deltaH=w*C*(T2-T1);
// using the formula Qh=deltaH+w*g*deltaz
Qh=deltaH+w*g*deltaz;
printf("\n\n the duty on heat exchanger is \n Q=%6eJ/sec",Qh);
