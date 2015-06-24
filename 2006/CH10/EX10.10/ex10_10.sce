clc;
// State after reversible adiabatic expansion
p2=50; // pressure in kPa
s2s=6.4844; s1=6.4844; s2=6.944; // specific entropy in kJ/kg K
x2s=0.829; // Quality of steam 
h2s=2252.6; h1=3256.6; // specific enthalpy in kJ/kg 
T2=81.33; T0=27; // Temperature in degree celcius
ws=h1-h2s; // Reversible adiabatic work
wa=831.2; // Actual work output in kJ/kg
d_AE=979.1; // Decrease in availability in kJ/LG
eff_I=wa/ws; // First law efficiency of turbine
eff_II=wa/d_AE; // Second law efficiency of turbine
disp ("%",eff_II*100,"Second law efficiency of turbine = ","%",eff_I*100,"First law efficiency of turbine = ");
w2srev2=(T2-T0)*(s2-s1); // Negative work
w1rev2=ws-w2srev2; // Decrease in availability
disp ("kJ/kg",w1rev2,"Dcresase in Availability =  ","kJ/kg",w2srev2,"Negative work = ");
