clc;
Ta=288; // Ambient temperature in kelvin
pa=1.01; // Ambient pressure in bar
p04=2.4; // Stagnation pressure in bar
T04=1000;// Stagnation temperature in kelvin
m=23; // Mass flow rate in kg/s
rp=1.75; // Pressure ratio
eff_f=0.88 ; // Efficiency of the fan
eff_ft=0.9; // Efficiency of the fan turbine
Cpa=1.005;// Specific heat of air  at constant pressure in kJ/kg K
Cpg=1.147;// Specific heat of fuel at constant pressure in kJ/kg K
rg=1.33;// Specific heat ratio of fuel
r=1.4; // Specific heat ratio of air
R=284.6; // Characteristic gas constant in J/kg K
T01=Ta;
p01=pa;
pc=p04*(2/(r+1))^(r/(r-1));
// since pc>pa the nozzle will choke
Tc=T04*(2/(r+1));
row_c=pc*10^5/(R*Tc);
cj=sqrt (r*R*Tc);
A=m/(row_c*cj);
p1=pa;
F=m*cj+(A*(pc-p1)*10^5);
// For fan engine
T_02=T01*(rp)^((r-1)/r);
T02=T01+(T_02-T01)/eff_f;
// For cold nozzle
m_nozzle=2*m; // Flow through cold nozzle
pc1=p01*rp*(2/(r+1))^(r/(r-1));
F_cold=m_nozzle*sqrt (2*Cpa*10^3*(T02-T01));
// Fan Turbine
T05=T04-((m_nozzle*Cpa*(T02-T01))/(m*Cpg));
T_05=T04-(T04-T05)/eff_ft;
p_05=p04*(T_05/T04)^(rg/(rg-1));
pc=p_05*(2/(rg+1))^(rg/(rg-1));
F_hot=m*sqrt (2*Cpg*10^3*(T05-T01));
Takeoffthrust= F_cold + F_hot;

disp ("m^2   (roundoff error)",A,"Nozzle Exit area = ");
disp ("N   (roundoff error)",F,"Total Thrust = ");
disp ("N   (roundoff error)",Takeoffthrust,"Take-off Thrust = ");
