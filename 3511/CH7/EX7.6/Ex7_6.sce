clc;
ci=600*1000/3600; // Velocity in m/s
Cpa=1.005;// Specific heat of air  at constant pressure in kJ/kg K
Cpg=1.147;// Specific heat of fuel at constant pressure in kJ/kg K
rg=1.33;// Specific heat ratio of fuel
r=1.4; // Specific heat ratio of air
R=287; // Characteristic gas constant in J/kg K
pa=0.458; // Ambient pressure in bar
Ta=-15+273; // Ambient temperature in kelvin
rp=9; // pressure ratio
T03=1200; // Maximum temperature in kelvin
eff_ram=0.9; // Intake duct efficiency
eff_c=0.89; // Compressor efficiency
eff_T=0.93; // Turbine efficiency
eff_m=0.98; // Mechanical efficiency of transmission

cj=ci
T_01=Ta+(ci^2/(2*Cpa*10^3));
p_01=pa*(T_01/Ta)^(r/(r-1));
p01=eff_ram*(p_01-pa);
p02=rp*p01;
T01=T_01;
T_02=T01*rp^((r-1)/r);
T02=T01+(T_02-T01)/(eff_c);
T_04=T03*(1/rp)^((rg-1)/rg);
T04=T03-eff_T*(T03-T_04);
WN=Cpg*(T03-T04)-Cpa*(T02-T01)/eff_m;// net work done
eff_th=WN/(Cpg*(T03-T02)); // Thermal efficiency

disp ("kJ/kg   (roundoff error)",WN,"Net work done = ");
disp ("%",eff_th*100,"Thermal efficiency = ");
