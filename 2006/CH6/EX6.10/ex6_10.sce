clc;
p1=3; // initial pressure of air in bar
T1=200; // initial temperature of air in degree celcius
p2=1.5; // final pressure of air in bar
T2=105; // final temperature of air in degree celcius
Cpo=1.0035; // Specific heat at constant pressure in kJ/kg K
R=0.287; // characteristic gas constant of air in kJ/kg K
delta_s= Cpo*log (T2/T1)- R*log (p2/p1); // change in entropy during irreversible process
disp ("kJ/kg K",delta_s,"change in entropy during irreversible process = ");
