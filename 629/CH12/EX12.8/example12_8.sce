clear
clc
//Example 12.8 FLOW PROPERTIES IN SUPERSONIC WIND TUNNEL
k=1.4;
R=287; //[J/kg.K]
//From table A.1, interpolating for A/Ao=10,
M=3.91; //Mach number
printf("\n The Mach number at the test section, M = %.2f.\n\n",M)
pt=4000; //pressure[kPa]
Tt=350; //temp.[K]
//In test section
p=0.00743*pt //[kPa]
T=0.246*Tt //[K]
printf("\n At the test section, pressure p = %.1f kPa and temperature T = %.f K.\n\n",p,T)
//Speed of sound
c=sqrt(k*R*T) //[m/s]
//Velocity
V=M*c //[m/s]
printf("\n The velocity at test section, V = %.f m/s.\n",V)