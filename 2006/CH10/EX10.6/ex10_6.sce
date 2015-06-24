clc;
p1=450; // Initial pressure in kPa
T=600; // Initial temperature in kelvin
V1=0.01; // Initial volume in m^3
TR=1200; // Temperature of heat source in Kelvin
V2=0.02; // Final volume in m^3
p0=100; // Pressure of Surroundings in kPa
T0=300; // temperature of Surroundings in kelvin
// Useful Work
W=p1*V1*log (V2/V1); // Actual work
Wsurr=p0*(V2-V1); // Surrounding work
Wu=W-Wsurr; // Useful work
disp ("kJ",Wu,"Useful Work for the process =");
// Reversible work
Q=W; // For isothermal process
S21=Q/T; // Entropy change of system
Wrev=T0*S21-Wsurr+Q*(1-T0/TR); // reversible work
disp ("kJ",Wrev,"Reversible work for the provess =");
// Irreversibility of the process
I=Wrev-Wu; // Irreversibility
disp ("kJ",I,"Irreversibility of the process = ");
// Entropy generation 
del_Sgen=S21-Q/TR;//Entropy generation
disp ("kJ/kg",del_Sgen,"Entropy generation of the process = ");
