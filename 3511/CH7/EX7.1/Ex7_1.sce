clc;
CV=43; // Calorific value of fuel in MJ/kg
mf=0.18*9000/3600; // Fuel consumption in kg/s
F=9; // Thrust in kN
ci=500; // Aircraft velocity in m/s
ma=27; // Mass of air passing through compressor in kg/s

A_F=ma/mf; // Air fuel ratio
PT=F*ci; // Thrust power
Q=mf*(CV*10^3); // Heat supplied
eff=PT/Q; // Overall efficiency
disp (A_F,"Air fuel ratio  = ");
disp ("%",eff*100,"Overall efficiency = ");
