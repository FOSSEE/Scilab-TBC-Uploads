clc;
rp=2; // Pressure ratio
T01=15+273; // Inlet temperature in kelvin
p01=1; // Inlet pressure in bar
T05=700+273; // Temperature at state 5 in kelvin
T07=T05;
eff_c=0.85; // compressor efficiency
eff_T=0.85; // Turbine efficiency
eff=0.5; // Effectiveness of heat exchanger
Cp=1.147;// Specific heat at constant pressure in kJ/kg K
rg=1.33;// Specific heat ratio of fuel
r=1.4; // Specific heat ratio of air

T03=T01;
// p02/p01=p04/p03=rp
//p04/p01=p05/p08=rp^2
T_02=T01*(rp)^((r-1)/r);
T02=T01+(T_02-T01)/eff_c;
T04=T02;
T_06=T05/rp^((rg-1)/rg);
T06=T05-eff_T*(T05-T_06);
T08=T06;
T09=T04+eff*(T08-T04);
WN=Cp*(T07-T08);
Q=Cp*(2*T05-T06-T09);
eff_th=WN/Q;

disp ("kJ/kg",WN,"Net work done = ");
disp ("%",eff_th*100,"The overall efficiency = ");
