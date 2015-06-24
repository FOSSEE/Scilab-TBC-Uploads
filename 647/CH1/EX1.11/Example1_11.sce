clear;
clc;

// Example: 1.11
// Page: 13

printf("Example: 1.11 - Page: 13\n\n");

//*****Data*****//
dia = 0.3;// [m]
m = 100;// [kg]
P_atm = 1.013*10^5;// [N/square m]
g = 9.792;// [m/square s]
//**************//

Area = (%pi/4)*dia^2;// [square m]
//Solution (a)(i)
// Force exerted by the atmosphere:
F_atm = P_atm*Area;// [N]
// Force exerted by piston & metal block:
F_mass = m*g;// [N]
// Total force acting upon the gas:
F = F_atm + F_mass;// [N]
printf("Total Force eacting upon the gas is %.1f N\n",F);

// Solution (a)(ii)
Pressure = F/Area;// [N/square m]
printf("Pressure exerted is %.3f kPa\n\n",Pressure/1000);

// Solution (b)
// The gas expands on application of heat, the volume of the gas goes on increasing and the piston moves upward.
Z = 0.5;// [m]
// Work done due to expansion of gas:
W = F*Z;// [J]
printf("Work due to expansion by the gas is %.3f kJ\n\n",W/1000);

// Solution (c)
// Change in potential energy of piston and weight after expansion process:
Ep = m*g*Z;// [J]
printf("Change in Potential Energy is %.1f J\n",Ep);