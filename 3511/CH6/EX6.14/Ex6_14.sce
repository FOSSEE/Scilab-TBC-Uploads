clc;
T01=38+273; // Inlet temperature of compressor in kelvin
eff_c=0.82; // Compressor efficiency
T03=650+273; // Turbine inlet temperature in kelvin
eff_T=0.8; // Turbine efficiency
Cpa=1.005;// Specific heat of air  at constant pressure in kJ/kg K
Cpg=1.147;// Specific heat of fuel at constant pressure in kJ/kg K
rg=1.33;// Specific heat ratio of fuel
r=1.4; // Specific heat ratio of air

t=T03/T01;
// For maximun specific work we know that
ropt=(sqrt (t*eff_c*eff_T))^(r/(r-1));
T_02=T01*ropt^((r-1)/r);
T02=T01+(T_02-T01)/eff_c;
T_04=T03/ropt^((rg-1)/rg);
T04=T03-eff_T*(T03-T_04);
eff_th=((Cpg*(T03-T04))-(Cpa*(T02-T01)))/(Cpg*(T03-T02));

disp (ropt,"Optimum pressure ratio = ");
disp ("%",eff_th*100, "Overall efficiency = ");
