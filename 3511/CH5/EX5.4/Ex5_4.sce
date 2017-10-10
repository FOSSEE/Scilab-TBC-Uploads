clc;
T1=300; // Inlet air temperature to the compressor in kelvin
p1=1; // pressure at state 1 in bar
T2=475; // Temperature at discharge in kelvin
p2=5;// Pressure at state 2
T5=655; // Temperature after heat exchanger in kelvin
T3=870+273; // Temperature at he turbine inlet in kelvin
T4=450+273; // Temperature after turbine in kelvin
Cp=1.005; // Specific heat at constant pressure in kJ/kg K
r=1.4; // Specific heat ratio
R=287; // Characteristic gas constant in J/kg K

Wc=Cp*(T2-T1); // Work done during compression
WT=Cp*(T3-T4); // Work done during expansion
WN=WT-Wc; // Net work done
q=Cp*(T3-T5); // Heat supplied
eff=WN/q; // Efficiency of a cycle

disp ("kJ/kg",WN,"(i). The output per kg of air = ");
disp ("%",eff*100,"(ii).The efficiency of the cycle = ");
disp ("kJ/kg",Wc,"(iii). The work required to drive the compressor = ");
