clc;
nW_WT=0.563; // Ratio of net work to turbine work
T1=300; // Inlet temperature to the compressor in kelvin
eff=0.35; // Thermal efficiency of the unit
m=10; // massflow rate in kg/s
Cp=1; // Specific heat at constant pressure in kJ/kg K
r=1.4; // Specific heat ratio

c=1/(1-eff); // For ideal simple cycle
T2=T1*c; // Temperature at state 2
Wc=Cp*(T2-T1); // Compressor work
WT=Wc/(1-nW_WT); // Turbine work
WN=WT-Wc; // Net work
q=WN/eff; // Net heat supplied per kg of air
T3=(q/Cp)+T2; // Temperature at state 3
T4=T3/c; // Temperature at state 4
T3_T4=T3-T4; // Temperature drop across the turbine
disp ("K",T3_T4,"Temperature drop across the turbine = ");
