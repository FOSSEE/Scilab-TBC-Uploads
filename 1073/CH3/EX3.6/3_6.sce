
clc;
clear;
//Example 3.6
P1=101.325    //Pressure in [kPa]
mu1=30.8*10^-6    //Kinematic viscosity in[sq m /s]
k=36.4*10^-3    //[W/(m.K)]
Npr=0.69
u_inf=8    //Velocity in [m/s]
Cp=1.08    //kJ/(kg.K)
L=1.5    //Length of plate in [m]
W=0.3    //Width in [m]
A=L*W    //Area in [sq m]
//At constant temperature: mu1/mu2=P2/P1
P2=8     //[kPa]
mu2=mu1*P1/P2    //Kinematic viscosity at P2 in [sq m/s]
Nre_l=u_inf*L/mu2    //Reynold's no.
//Since this is less than 3*10^5
Nnu=0.664*sqrt(Nre_l)*(Npr^(1.0/3.0))
h=Nnu*k/L  // Heat transfer coeffficient in [W/sq m.K]
h=2.5       //Approximation in [W/sq m.K]
T_inf=523    //[K]
Tw=353    //[K]
Q=2*h*A*(T_inf-Tw)    //Heat removed from both sides in [W]
printf("Rate of heat removed from both sides of plate is %f W",Q);    

