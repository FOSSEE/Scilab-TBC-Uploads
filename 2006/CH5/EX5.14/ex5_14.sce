clc;
p1=1; // Suction pressure of air in bar
p2=5; // Delivery pressure of air in bar
T1=310; // Suction Temperature of air in kelvin
Cpo=1.0035; // Specific heat at constant pressure in kJ/kg K
// (a) Polytropic compression
T2=475; // Delivery Temperature of air in kelvin
Q=-0.15; // Heat loss to the cooling water in kW
Wpoly=-5.3; // Power consumption of compressor in kW
m=(-Wpoly+Q)/(Cpo*(T2-T1)); // mass flow rate of air from SSSF energy equation
n=1/((1-((log (T2/T1))/(log (p2/p1))))); // Index of polytropic process
disp (n,"Index of polytropic process = ","kg/s",m,"mass flow rate of air = ","(a).Polytropic compression");
// (b) Adiabatic compression
k=1.4; // Index of adiabatic process
Wad=-m*Cpo*T1*((p2/p1)^((k-1)/k)-1); // power consumption of compressor
disp ("kW",Wad,"Power consumption of compressor = ","(b).Adiabatic compression");
// (c).Difference between specific work
wdiff=(abs(Wad)-abs(Wpoly))/m; // Difference between specific work
disp ("kJ/kg",wdiff,"Difference between specific work = ","(c).Difference between specific work");
