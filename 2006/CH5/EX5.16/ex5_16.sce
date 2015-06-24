clc;
p1=3; // Pressre of air at state 1 in bar
p2=p1; // constant pressure process
T1=450; // Temperature of air at state 1 in kelvin
T2=1250; // Temperature of air at state 2 in kelvin
T3=1000; // Temperature of air at state 3 in kelvin
V3=50; // Velocity of air at state 3 in m/s
T4=800; // Temperature of air at state 4 in kelvin
Cpo=1.0035; // Specific heat at constant pressure in kJ/kg K
// (a).Combustion chamber
q=Cpo*(T2-T1); // Heat added to air
disp ("kJ/kg   (round off error)",q,"Heat added to air = ","(a).Combustion chamber");
// (b).Turbine 
k=1.4; // Index of adiabatic process
w=Cpo*(T2-T3)-V3^2/2000; // Work done 
disp ("kJ/kg   (round off error)",w,"Work done = ",("(b).Turbine)"));
// (c).Nozzle
V4=sqrt (2*Cpo*10^3*(T3-T4)+V3^2); // Velocity of air leaving the nozzle
disp ("m/s   (round off error)",V4,"Velocity of air leaving the nozzle = ","(c).Nozzle");
// (d).Pressure drop
p3=p2*(T3/T2)^(k/(k-1)); // Pressure of air leaving turbine
p4=p3*(T4/T3)^(k/(k-1)); // Pressure of air leaving nozzle
disp ("bar   ",p4,"Pressure of air leaving nozzle = ","bar",p3,"Pressure of air leaving turbine = ","(d).Pressure drop");
