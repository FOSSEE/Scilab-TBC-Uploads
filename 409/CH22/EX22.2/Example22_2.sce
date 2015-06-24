clear ;
clc;
// Example 22.2
printf('Example 22.2\n\n');
//page no. 652
// Solution

// Given
T1 = 80 ;// Initial temperature -[degree F]
T1 = 40 ;// final temperature -[degree F]

// Additional data obtained from steam table at given temperatures and corresponding vapour pressures
p1 = 0.5067 ;// Initial saturation pressure-[psia]
p2 = 0.1217 ;// Final saturation pressure-[psia]
V1 = 0.01607 ;// Initial specific volume - [cubic feet/lb]
V2 = 0.01602 ;// Final specific volume - [cubic feet/lb]
H1 = 48.02 ;//Initial specific enthalpy -[Btu/lb]
H2 = 8.05 ;// Final specific  enthalpy -[Btu/lb]

del_P = p2 - p1 ;// Change in pressure -[psia]
del_V = V2 - V1 ;// Change in specific volume -[cubic feet/lb]
del_H = H2 - H1 ;// Change in specific enthalpy -[Btu/lb]
del_pV = p2*144*V2/778 - p1*144*V1/778 ;// Change in pv-[Btu]
del_U = del_H - del_pV ;// Change in specific internal energy - [Btu/lb]
del_E = del_U ;// Change in specific total energy(since KE=0,PE=0 and W=0) -[Btu/lb]

printf('\nChange in pressure is %.3f psia .\n ',del_P);
printf('\nChange in specific volume is %.5f cubic feet/lb (negligible value) .\n ',del_V);
printf('\nChange in specific enthalpy is %.2f Btu/lb .\n ',del_H);
printf('\nChange in specific internal energy is %.2f Btu/lb .\n ',del_U);
printf('\nChange in specific total energy is %.2f Btu/lb .\n ',del_E);