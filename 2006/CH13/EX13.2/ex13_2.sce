clc;
T=573.15; // Temperature of the water with another liquid in kelvin
R=8.3144/18; // Characteristic gas constant
// (a).4 MPa
P_1=10; //  By Method II, The lowest possible pressure at which date available in steam table for 300 oC temperature in kPa
h_i=3076.5; // Specific enthalphy at P_1 in kJ/kg
s_i=9.2813; // Specific entropy at P_1 in kJ/kg K
// from superheat table at p=4 MPa and t=300 oC
hi=2960.7; // Specific enthalphy in kJ/kg
si=6.3615; // Specific entropy in kJ/kg K
fi=P_1*exp ((((hi-h_i)/T)-(si-s_i))/R); // Standard state fugacity of water
disp ("kPa   (round off error)",fi,"Standard state fugacity of water = ","(a).4 MPa");
// (b).equal to saturation pressure at 300 oC
Psat=8.581; // Saturation pressure at 300 oC in MPa
// From steam table at Psat=8.581 MPa and t=300 oC
hi=2749; // Specific enthalphy in kJ/kg
si=5.7045; // Specific entropy in kJ/kg K
fi=P_1*exp ((((hi-h_i)/T)-(si-s_i))/R); // Standard state fugacity of water
pisat=fi/(Psat*10^3); // fugacity coefficient
disp (pisat,"fugacity coefficient =","kPa",fi,"Standard state fugacity of water = ","(b).Equal to saturation pressure at 300 oC");
// (c).10 MPa
// Applying Method I 
viL=0.001404; // Specific volume at 300 oC in m^3/kg
fi=pisat*Psat*10^3*exp ((viL*(P_1-Psat)*10^3)/(R*T)); // Standard state fugacity of water
disp ("kPa",fi,"Standard state fugacity of water = ","(a).10 MPa");
