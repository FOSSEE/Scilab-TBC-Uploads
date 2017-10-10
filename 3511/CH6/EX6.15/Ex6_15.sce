clc;
p01=1; // Stagnation pressure at entry in bar
pa=0.93; // Static pressure at entry in bar
T1=10+273;// Static temperature in entry in kelvin
p02=6; // Pressure at state 2 in bar
T02=230+273; // Temperature at state 2 in kelvin
P=5100; // Turbine output power in kW
A=0.1; // Compressor entry area in m^2
Cpa=1.005;// Specific heat of air  at constant pressure in kJ/kg K
Cpg=1.147;// Specific heat of fuel at constant pressure in kJ/kg K
rg=1.33;// Specific heat ratio of fuel
r=1.4; // Specific heat ratio of air
R=287; // Characteristic constant in J/kg K
T04=460+273; // Exhaust pipe temperature in kelvin

M=sqrt (((p01/pa)^((r-1)/r)-1)/((r-1)/2));
T01=T1*(1+(r-1)/2*M^2);
T_02=T01*(p02/p01)^((r-1)/r);
eff_c=(T_02-T01)/(T02-T01);
row_s=(pa*10^5)/(R*T1);
a=sqrt (r*R*T1);
V=M*a;
m=row_s*A*V;
T03=(P/(m*Cpg))+T04;

disp ("%",eff_c*100,"Compressor efficiency = ");
disp ("kg/s",m,"Mass flow rate = ");
disp ("K   (roundoff error)",T03,"Turbine inlet stagnation temperature = ");
