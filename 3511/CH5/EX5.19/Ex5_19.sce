clc;
m=30; // Mass flow rate in kg/s
p1=1; // pressure of air at compressor inlet in bar
T1=273+15; // Temperature of air at compressor inlet in kelvin
p2=10.5; // Pressure of air at compressor outlet
T_R=420; // Temperature rise due to combustion in kelvin
p4=1.2; // Pressure at turbine outlet in bar
Cp=1.005; // Specific heat at constant pressure in kJ/kg K
r=1.4; // Specific heat ratio

T2=T1*(p2/p1)^((r-1)/r); // Temperature at state 2
T3=T2+T_R; // Temperature at state 3
p3=p2;
T4=T3/(p3/p4)^((r-1)/r);
Wc=m*Cp*(T2-T1); // Compressor work
WT=m*Cp*(T3-T4); // Turbine work
WN=WT-Wc; // Net work output
Q=m*Cp*(T3-T2); // Heat supplied
eff_th=WN/Q; // Thermal efficiency

disp ("%",eff_th*100,"Thermal efficiency = ","kW   (roundoff error)",WN,"Power output = ","kW",Q,"Heat supplied = ");
