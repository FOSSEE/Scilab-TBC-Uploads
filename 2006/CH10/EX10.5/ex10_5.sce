clc;
T=700;// Exhaust gas temperature in degree celcius
p=120;// Exhaust gas pressure in kPa
Cpo=1.089; // Specific heat at constant pressure in kJ/kg K
R=0.287; // characteristic gas constant  in kJ/kg K
p0=100; // Pressure of Surroundings in kPa
T0=30; // temperature of Surroundings in degree celcius
Cvo=Cpo-R;  // Specific heat at constant volume
AE=(Cvo*(T-T0))+(p0*R*((T+273)/p-(T0+273)/p0))-((T0+273)*((Cpo*log((T+273)/(T0+273)))-(R*log (p/p0)))); // Available energy
disp ("kJ",AE,"Available energy in Exhaust gas =");
