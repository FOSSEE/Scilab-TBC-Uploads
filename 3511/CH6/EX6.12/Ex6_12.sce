clc;
rp=4; // Pressure ratio
WN=1500; // Net work output in kW
T01=25+273; // Inlet temperature in kelvin
p01=1; // Inlet pressure in bar
p03=4; // Turbine inlet pressure in bar
T03=700+273;// turbine inlet temperature in kelvin
eff_c=0.85; // Compressor efficiency
eff_over=0.21; // Overall efficiency
Cp=1.005;// Specific heat of air  at constant pressure in kJ/kg K
r=1.4; // Specific heat ratio of air

T02=T01+T01*(rp^((r-1)/r)-1)/eff_c;
Q=WN/eff_over;
m=Q/(Cp*(T03-T02));
Wn=WN/m; // Net work per kg
T04=T03-T02+T01-(Wn/Cp);
T_04=T03/rp^((r-1)/r);
eff_T=(T03-T04)/(T03-T_04);

disp ("kg/s",m,"Mass flow rate = ");
disp ("%",eff_T*100,"Isentropic efficiency  of the Turbine = ");
