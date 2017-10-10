clc;
rp=7; // Pressure ratio
T03=1000; // Maximum temperature in kelvin
eff_c=0.85; // Compressor efficiency
eff_T=0.9; // Turbine efficiency
T01=288; // Air entering temperature in kelvin
PN=750; // Power output in kW
Cpa=1.005;// Specific heat of air  at constant pressure in kJ/kg K
Cpg=1.147;// Specific heat of fuel at constant pressure in kJ/kg K
rg=1.33;// Specific heat ratio of fuel
r=1.4; // Specific heat ratio of air
R=287; // Characteristic constant in J/kg K

// Actual cycle
T02=T01*(1+((rp^((r-1)/r)-1)/eff_c));
T04=T03*(1-(eff_T*(1-(1/rp^((r-1)/r)))));
WN_a=(Cpa*(T03-T04)-Cpa*(T02-T01));
eff_th=WN_a/(Cpa*(T03-T02));
disp ("%",eff_th*100,"The Efficiency = ","kJ/kg",WN_a,"Net work = ","(i).Actual cycles");

// Ideal cycle
WN=Cpa*((T03*(1-(1/rp^((r-1)/r))))-T01*((rp^((r-1)/r)-1)));
eff_th=1-(1/rp^((r-1)/r));
ma=PN/WN_a;

disp ("kg/s",ma,"Mass flow rate  = ","%",eff_th*100,"The Efficiency = ","kJ/kg",WN,"Net work = ","(ii).Ideal cycles");
