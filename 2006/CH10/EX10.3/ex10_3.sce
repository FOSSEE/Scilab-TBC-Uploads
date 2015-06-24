clc;
Cp=1.1; // Specific heat of combustion gas in kJ/kg K
T3=1600; // Initial temperature of combustion gas in Kelvin
T4=1150; // Final temperature of combustion gas in Kelvin
p1=0.1; // Pressure at inlet of boiler in MPa
p2=8;// Pressure at outlet of boiler in MPa
T2=600; // Temperature at outlet of boiler in degree celcius
m=1; // Mass of water in kg
T0=298; // temperature of Surroundings in kelvin
// (b).mass flow rate of gases per kg of water
// From steam table 
h1=2758; h2=3642;// specific enthalpy in kJ/kg 
s1=5.7432; s2=7.0206; // specific entropy in kJ/kg K
mgas=(h2-h1)/(Cp*(T3-T4)); //mass flow rate of gases per kg of water
disp ("kg gas / kg water",mgas,"(b).mass flow rate of gases per kg of water =");
// (c). Degrease in Available energy
S21=s2-s1; // Change in entropy of water
S34=mgas*Cp*log (T3/T4); // Change in entropy of gases
UEgases=T0*S34; // UnAvailable energy of gas
UEsteam=T0*S21; // UnAvailable energy of steam
d_AE=UEsteam-UEgases; // Degrease in Available energy
disp ("kJ/K",-S34,"Change in entropy of gas = ","kJ/K",S21,"Change in entropy of water = ","(c).");
disp ("kJ",UEsteam,"Unavailable energy of steam =","kJ",UEgases,"Unavailable energy of gas = ");
disp ("kJ",d_AE," Degrease in Available energy = ");
