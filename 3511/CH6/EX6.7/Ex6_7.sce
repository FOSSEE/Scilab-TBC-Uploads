clc;
eff_C=0.7042; // Efficiency of the compressor
eff_T=0.71; // Efficiency of the turbine
Q=476.354; // Head added in kJ/kg
WR=0.0544; // Work ratio
T01=300;// Total inlet temperature in kelvin
Cpa=1.005;// Specific heat of air  at constant pressure in kJ/kg K
Cpg=1.147;// Specific heat of fuel at constant pressure in kJ/kg K
rg=1.33;// Specific heat ratio of fuel
r=1.4; // Specific heat ratio of air

c_t=(1-WR)*(eff_T*eff_C);
t=((Q/(Cpg*T01))+1-1/eff_C)/(1-c_t/eff_C); // Temperature ratio
c=c_t*t;
rp=c^(r/(r-1)); // Pressure ratio

disp (rp,"Pressure ratio = ");
disp (t,"Temperature ratio = ");
