clc;
pa=0.7; // Ambient pressure in bar
Ta=1+273; // Ambient temperature in kelvin
Ci=800*1000/3600; // Speed of the aircraft in m/s
rp=5;// Pressure ratio
eff_ram=1.00; // Intake duct efficiency
eff_c=0.85; // Compressor efficiency
eff_T=0.90; // Turbine efficiency
eff_comb=0.98; //Combustion efficiency 
eff_nozzle=0.95; // Nozzle efficiency
rp_T=2.23;// Turbine pressure ratio
CV=43; // Low calorific value in MJ/kg
Cpa=1.005;// Specific heat of air  at constant pressure in kJ/kg K
Cpg=1.005;// Specific heat of fuel at constant pressure in kJ/kg K
rg=1.4;// Specific heat ratio of fuel
r=1.4; // Specific heat ratio of air
R=287; // Characteristic gas constant in J/kg K
F=25000; // Thrust in N

cj=2*Ci;
T_01=Ta+(Ci^2/(2*Cpa*10^3));
T01=T_01;
T02=T01+(T01*(((rp)^((r-1)/r))-1))/eff_c;
p_01=pa*(1+Ci^2/(2*Cpa*10^3*Ta))^(r/(r-1));
p01=eff_ram*(p_01-pa);
p02=rp*p01;
T03=(T02-T01)/(eff_T*(1-1/rp_T^((r-1)/r)));
ma=F/(cj-Ci);
// Neglecting the effect of the mass addition of fuel on the right hand side
mf=(ma*Cpa*(T03-T02))/(eff_comb*CV*10^3);

disp ("kg/s",ma,"Mass flow rate of air = ");
disp ("kg/s   (roundoff error)",mf,"Mass flow rate of fuel = ");
