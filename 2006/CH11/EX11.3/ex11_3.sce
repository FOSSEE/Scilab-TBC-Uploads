clc;
p5=6000; // Pressure of superheated steam in kPa
T5=723.15; // Temperature of superheated steam in kelvin
p1=0.6113; // Pressure at reference state in kPa
T1=273.16; // Temperature at reference state in kelvin
hfg1=2501.3; // Latent heat of vapourization of water at reference state in kJ/kg
R_1=8.3143; // Universal gas constant of air in kJ/kmol K
// The critical state properties of water
pc=2.09; // pressure in MPa
Tc=647.3; // Temperature in kelvin
h1=0; // Reference state in kJ/kg
h2=h1+hfg1; // specific enthalpy in kJ/kg 
// At point 2
p2=p1; T2=T1;
z=0.9986;
r=18.015;
A2=(0.4278/(pc*10^4))*(Tc/T2)^2.5; // Constants
B=(0.0867/(pc*10^4))*(Tc/T2); // Constants
h2_h3=R_1*(T2/r)*(((-3/2)*(A2/B)*log (1+(B*p2/z)))+z-1); // Enthalpy difference between state 2 & 3
// At point 5
z1=0.9373;
A2=(0.4278/(pc*10^4))*(Tc/T5)^2.5; // Constants
B=(0.0867/(pc*10^4))*(Tc/T5); // Constants
h5_h4=R_1*(T5/r)*(((-3/2)*(A2/B)*log (1+(B*p5/z1)))+z1-1); // Enthalpy difference between state 5 & 4
a=1.6198;b=6.6*10^-4; // Constants
h4_h3=a*(T5-T1)+b*(T5^2-T1^2)/2; // Enthalpy difference between state 3 & 4
h5=h2-h2_h3+h5_h4+h4_h3; // Specific enthalpy at state 5 
disp ("kJ/kg",h5,"Specific enthalpy at state 5 = ");
