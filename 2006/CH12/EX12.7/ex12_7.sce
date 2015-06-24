clc;
y1=0.5; // Molecular mass of CH4 in kmol
y2=0.5; // Molecular mass of C3H8 in kmol
T=363; // Temperature of gas in kelvin
p=5.06; // Pressure of gas in MPa
v=0.48; // volume of cylinder in m^3
R_1=8.3143; // Universal gas constant of air in kJ/kmol K

// (a).Using kay’s rule
// let component 1 refer to methane and component 2 to propane
// the critical properties
Tc1=190.7; Tc2=370; // temperature in kelvin
Pc1=46.4; Pc2=42.7; // Pressure in bar
// using kay’s rule for the mixture
Tcmix=y1*Tc1+y2*Tc2;
Pcmix=y1*Pc1+y2*Pc2;
// reduced properties
Tr=T/Tcmix; Pr=p/Pcmix;
// From generalized chart
z=0.832;
v_1=z*R_1*T/(p*10^3); // molar volume of the mixture
d=(v-v_1)/v; // Percentage deviation from actual value
disp ("%",d*100,"Percentage deviation from actual value = ","(a).Using kay’s rule");
// (b).Using Redlich-Kwong equation of state
a1=0.42748*R_1*Tc1^2.5/Pc1;
a2=0.42748*R_1*Tc2^2.5/Pc2;
b1=0.08664*R_1*Tc1/Pc1;
b2=0.08664*R_1*Tc2/Pc2;
// Substituting these values in the equation 12.16
// And solving these equation by iteration method we get
v_1=0.47864;// molar volume of the mixture
d=(v-v_1)/v; // Percentage deviation from actual value
disp ("%",d*100,"Percentage deviation from actual value = ","(b).Using Redlich-Kwong equation of state");
