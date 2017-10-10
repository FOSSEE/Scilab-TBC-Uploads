clc;
eff_pe=0.85; // Polytropic efficiency of the compressor
T_02_T01=2;
Cpa=1.005;// Specific heat of air  at constant pressure in kJ/kg K
Cpg=1.147;// Specific heat of fuel at constant pressure in kJ/kg K
rg=1.33;// Specific heat ratio of fuel
r=1.4; // Specific heat ratio of air

rc=(T_02_T01)^(r/(r-1));
eff_C=(T_02_T01-1)/(((rc^(((r-1)/r)*(1/eff_pe)))-1)); // Compressor efficiency
eff_T=(1-(1/rc)^(eff_pe*(r-1)/r))/(1-(1/rc)^((r-1)/r)); // Turbine efficiency


disp ("%",eff_C*100," Isentropic compressor efficiency = ");
disp ("%",eff_T*100," Isentropic Turbine efficiency = ");
