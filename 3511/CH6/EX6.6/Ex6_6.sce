clc;
rp=11.3137; // Pressure ratio
WN=0; // Net work output
Q=476.354; // Heat added per kg of air mass in kJ
T01=300; // Inlet air total temperature in kelvin
eff_T=0.71; // turbine efficiency
Cpa=1.005;// Specific heat of air  at constant pressure in kJ/kg K
Cpg=1.147;// Specific heat of fuel at constant pressure in kJ/kg K
rg=1.33;// Specific heat ratio of fuel
r=1.4; // Specific heat ratio of air

T_02=T01*rp^((r-1)/r);
T03_T02=Q/Cpa;
T03_T_04=rp^((r-1)/r);
T04_T03=1-(eff_T*(1/T03_T_04)*(T03_T_04-1));
T04=T01+(T03_T02);
T03=T04/T04_T03;
t=T03/T01; //Temperature ratio
T02=T03-T03_T02;
eff_C=(T_02-T01)/(T02-T01); // Compressor efficiency

disp ("%",eff_C*100,"Compressor Efficiency = ",);
disp (t,"Temperature ratio = ");
