clc;
T1=15+273; // Inlet temperature of air at compressor inlet in kelvin
rp=6; // Compressor pressure ratio
T3=750+273; // Maximum permissible temperature in kelvin
T5=T3; // After reheat
Cp=1.005; // Specific heat at constant pressure in kJ/kg K
r=1.4; // Specific heat ratio

c=rp^((r-1)/r); 
T2=T1*c; // Temperature at state 2
p3_p4=sqrt (rp); // For maximum expansion work
T4=T3/(p3_p4)^((r-1)/r); // Temperature at state 4
T6=T4; // As pressure ratio is same
Wc=Cp*(T2-T1); // Compressor work
WT=Cp*(T3-T4)+Cp*(T5-T6); // Turbine work
T7=T4; // Because of 100% regeneration
q=Cp*(T3-T7)+Cp*(T5-T4); // Heat supplied
WN=WT-Wc; // Net work done
eff=WN/q; // Efficiency of the plant
Wratio=WN/WT; // Work ratio
disp ("kJ/kg of air",q,"Heat supplied = ");
disp ("kW   (roundoff error)",WN,"Net shaft work = ");
disp ("%",eff*100,"The cycle thermal efficiency = ");
disp (Wratio,"Work ratio = ");
