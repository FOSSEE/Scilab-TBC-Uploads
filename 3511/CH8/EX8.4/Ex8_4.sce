clc;
T01=0+273; // Inlet gas temperature in kelvin
p01=0.7; // Inlet pressure in bar
p02=1.05; // Delivery pressure in bar
eff_c=0.83; // Compressor efficiency
Cp=1.005;// Specific heat   at constant pressure in kJ/kg K
Cv=0.717;// Specific heat   at constant volume in kJ/kg K
r=1.4; // Specific heat ratio 

T_02=T01*(p02/p01)^((r-1)/r);
T02=T01+(T_02-T01)/eff_c; // Final temperature of the gas
Wc=Cp*(T02-T01); // Work of compression

// With additional compressor
T_03=T02*(p02/p01)^((r-1)/r);
T03=T02+(T_03-T02)/eff_c; 
T_03=T01*(p02/p01)^(2*(r-1)/r);
eff_overall=(T_03-T01)/(T03-T01);

disp ("K",T02,"Final temperature of the gas = ");
disp ("kJ/kg",Wc," Work of compression = ");
disp ("%",eff_overall*100,"Overall efficiency = ");
