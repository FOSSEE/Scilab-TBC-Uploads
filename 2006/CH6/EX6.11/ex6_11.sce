clc;
p1=5; // Initial pressure of argon gas in bar
T1=30; // Initial temperature of argon gas in degree celcius
v1=1; // Initial volume of argon gas in m^3 by assumption
v2=2*v1; // Final volume of argon gas in m^3
R=8.3144/40; // Characteristic gas constant of argon gas in kJ/kg K
p2=p1*(v1/v2); // Final pressure of argon gas
delta_s= R*log (v2/v1); // change in entropy (choosing the reversible isothermal path)
disp ("kJ/kg K",delta_s,"change in entropy (choosing the reversible isothermal path) = ","bar",p2,"Final pressure of argon gas =");
