clc;
p1=1; // initial pressure of air in piston cylinder arrangement in bar
T=300; // Temperature of air in piston cylinder arrangement in kelvin
p2=10; // Final pressure of air in piston cylinder arrangement in bar
R=0.287; // Characteristic gas constant of air in kJ/kg K
disp("The change in internal energy during the isothermal process is zero");
w=R*T*log (p1/p2); // Work done
disp ("kJ/kg",w,"Work done = ");
q=w; // From first law of thermodynamics
disp ("kJ/kg",q,"Heat transfer = ");
