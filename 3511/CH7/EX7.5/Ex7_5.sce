clc;
pa=0.458; // Ambient pressure in bar
Ta=248; // Ambient temperature in kelvin
Ci=805*1000/3600; // Speed of the aircraft in m/s
rp=4;// Pressure ratio
DelP_comb=0.21; // Combustion chamber pressure loss in bar
T03=1100; // Turbine inlet temperature in kelvin
eff_ram=0.95; // Intake duct efficiency
eff_c=0.85; // Compressor efficiency
eff_T=0.90; // Turbine efficiency
eff_m=0.99; // Mechanical efficiency of transmission
eff_nozzle=0.95; // Nozzle efficiency
CV=43; // Low calorific value in MJ/kg
Ac=0.0935; // Nozzle outlet area in m^2
Cpa=1.005;// Specific heat of air  at constant pressure in kJ/kg K
Cpg=1.147;// Specific heat of fuel at constant pressure in kJ/kg K
rg=1.33;// Specific heat ratio of fuel
r=1.4; // Specific heat ratio of air
R=287; // Characteristic gas constant in J/kg K

p01=pa*(1+eff_ram*((1+Ci^2/(2*Cpa*Ta*10^3))^(r/(r-1))-1));
p02=p01*rp;
T01=Ta+Ci^2/(2*Cpa*10^3);
T02=T01+T01*(rp^((r-1)/r)-1)/eff_c;
T04=T03-(Cpa*(T02-T01))/(Cpg*eff_m);
p03=p02-DelP_comb;
T_04=T03-(T03-T04)/eff_T;
p04=p03*(T_04/T03)^(r/(r-1));
p04_pc=1/(1-(((rg-1)/(rg+1))/eff_nozzle))^(rg/(rg-1));
Tc=T04*(1/p04_pc)^((rg-1)/rg);
pc=p04/p04_pc;
row_c=(pc*10^5)/(R*Tc);
cj=sqrt (rg*R*Tc);
m=row_c*Ac*cj;
F=m*(cj-Ci)+Ac*(pc-pa)*10^5; // Total thrust
mf=(m*Cpg*(T03-T02))/(CV*10^3);
sfc=mf*3600/F; // specific fuel consumption

disp ("N   (roundoff error)",F,"Total thrust = ");
disp ("kg/N h   (roundoff error)",sfc,"specific fuel consumption = ");

