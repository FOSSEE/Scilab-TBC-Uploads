clc;
p01=1; // Pressure at state 1 in bar
T01=30+273; // Temperature at state 1 in kelvin
p02=6; // Pressure of air after compressed in bar
eff_c=0.87; // Isentropic efficiency of compressor
T03=700+273; // Temperature at state 3 in kelvin
eff_T=0.85; // Isentropic efficiency of the turbine 
CV=43.1; // calorific value of fuel in MJ/kg
ma=80; // Mass flow rate of air in kg/min

Cpa=1.005;// Specific heat of air  at constant pressure in kJ/kg K
Cpg=1.147;// Specific heat of fuel at constant pressure in kJ/kg K
rg=1.33;// Specific heat ratio of fuel
r=1.4; // Specific heat ratio of air
T_02=T01*(p02/p01)^((r-1)/r); // from T-S diagram
T02=T01+(T_02-T01)/eff_c; // Temperature after compression
// Neglecting the addition of fuel in the combustion chamber we have mf+ma=ma
mf=(ma/60)*Cpg*(T03-T02)/(CV*10^3);
ma_mf=(ma/60)*(1/mf); // Air fuel ratio
A_F=ma_mf;
p04=p01;p03=p02;
T_04=T03*(p04/p03)^((rg-1)/rg);
T04=T03-eff_T*(T03-T_04);
WN=(ma/60)*Cpg*(T03-T04)-(ma/60)*Cpa*(T02-T01); //The net power of installation
eff_th=WN/(mf*CV*10^3); // The overall thermal efficiency

disp (A_F,"(i).Air fuel ratio of the turbine gases = ");
disp ("K",T04,"(ii).The final temperature of exhaust gases = ");
disp ("kW",WN,"(iii).The net power of installation = ");
disp ("%",eff_th*100,"(iv).The overall thermal efficiency = ");
