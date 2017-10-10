clc;
m=30; // mass flow rate in kg/s
N=15000; // Speed in rpm
r2=0.3; // Radius in m
D2=r2*2; // Diameter in m
w2=100; // Relative velocity in m/s
beta_1=80; // in degrees
p01=1; // Inlet pressure in bar
T01=300 // Inlet temperature in kelvin
Cp=1.005; // specific heat at constant pressure in kJ/kg K
r=1.4; // Specific heat ratio
R=287; // Characteristic gas constant in J/kg K

u2=3.14*D2*N/60;
ct2=u2-(w2*cosd (beta_1));
Fr=m*ct2*r2;
P=Fr*(2*3.14*N/60);
W=u2*ct2;
P02=p01*(1+(W*10^-3/(Cp*T01)))^(r/(r-1));

disp ("Nm",Fr,"Torque = ");
disp ("kW",P/1000,"Power = ");
disp ("bar",P02,"Head Developed = ");
