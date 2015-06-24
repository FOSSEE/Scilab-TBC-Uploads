clc;
x1=0.9; // mole fraction of NH3
x2=0.1; // Mole fraction of H2O
p=490.3; // Pressure in kPa
T=280.1; // Temperature in kelvin
lam12_11=-2131; lam21_22=-2726; // In kJ/kmol
R_1=8.3144; // Universal gas constant  in kJ/kmol K
// (a).Enthalpy of saturated liquid Mixture at L/B at bubble temperature
V1L=0.0016; V2L=0.001; //from properties of NH3 and H2O in m^3/kg
a=((V2L*18)/(V1L*17)) * exp (-lam12_11/(R_1*T));
b=((V1L*17)/(V2L*18)) * exp (-lam21_22/(R_1*T));
d_a=a*(lam12_11/(R_1*T^2)); d_b=b*(lam21_22/(R_1*T^2));
d_lnr1=(-(a*x2^2*d_a/(x1+(a*x2))^2))-(x2*d_b/(b*x1+x2))+(b*x1*x2*d_b/(b*x1+x2)^2);
d_lnr2=(-b*x1^2*d_b/(b*x1+x2)^2)-(x1*d_a/(x1+a*x2))+(a*x1*x2*d_a/(x1+a*x2)^2);x1=0.728; // By substituting these valuses in equation
h_E=-R_1*T^2*(x1*d_lnr1+x2*d_lnr2); // Heat of mixing
x1=0.9;
M=x1*17+x2*18; // Molecular weight
hE=h_E/M; 
h1L=32.5; h2L=29.4; // in kJ/kg
hL=(x1*h1L)+(x2*h2L)+hE;// Specific enthalpy of the liquid mixture
disp ("kJ/kg",hL,"Specific enthalpy of the liquid mixture = ","(a).Enthalpy of saturated liquid Mixture at L/B at bubble temperature");
// (b).Enthalpy of saturated vapour at V in Equilibrium with liquid at L/B
// From property table of ammonia and water at 0 oC
T1=273.15; // Temperature in kelvin
p1sat=429.4; p2sat=0.6108; // Pressure in kPa
hfg1=1262.4; hfg2=2501.4;// specific enthalpy in kJ/kg 
vg1=0.2895; vg2=206.3; // specific volume in m^3/kg
// Referring to fig 13.15 , we have
hb1=1262.4; hb2=2501.4;// specific enthalpy in kJ/kg
M=17; 
// The crictical properties 
Tc1=405.3; Tc2=647.3;// Temperature in kelvin
pc1=11.28; pc2=22.09; // Pressure in MPa
z1=(p1sat*vg1/(R_1*T1/M)); z2=(p2sat*vg2/(R_1*T/M));
A2_1=(0.4278/(pc1*10^3))*(Tc1/T1)^2.5; // Constants
B_1=(0.0867/(pc1*10^3))*(Tc1/T1); // Constants
h1R=R_1*(T1/M)*(((-3/2)*(A2_1/B_1)*log (1+(B_1*p1sat/z1)))+z1-1);
A2_2=(0.4278/(pc2*10^3))*(Tc2/T1)^2.5; // Constants
B_2=(0.0867/(pc2*10^3))*(Tc2/T1); // Constants
h2R=-0.2;
hc1=hb1-h1R; hc2=hb2-h2R; // Enthalpies at 0 oC
Cpo1=14.86; Cpo2=12.92; // In kJ/kg
A2_1=(0.4278/(pc1*10^3))*(Tc1/T)^2.5; // Constants
B_1=(0.0867/(pc1*10^3))*(Tc1/T); // Constants
A2_2=(0.4278/(pc2*10^3))*(Tc2/T)^2.5; // Constants
B_2=(0.0867/(pc2*10^3))*(Tc2/T); // Constants
y1=0.9999; y2=0.0001;
Tc=y1*Tc1+y2*Tc2;
z=0.957;
hR=R_1*(T/M)*(((-3/2)*(A2_1/B_1)*log (1+(B_1*p/z)))+z-1);
hV=y1*(hc1+Cpo1)+y2*(hc2+Cpo2)+hR;
disp ("kJ/kg",hV,"(b).Enthalpy of saturated vapour at V in Equilibrium with liquid at L/B");
// (c).Enthalpy of saturated vapour at D after complete vaporization of liquid at B/L
T=359.15; // In K
Cpo1=192.2; Cpo2=160.9; // In kJ/kg
A2_1=(0.4278/(pc1*10^3))*(Tc1/T)^2.5; // Constants
B_1=(0.0867/(pc1*10^3))*(Tc1/T); // Constants
A2_2=(0.4278/(pc2*10^3))*(Tc2/T)^2.5; // Constants
B_2=(0.0867/(pc2*10^3))*(Tc2/T); // Constants
y1=0.9; y2=0.1;
Tc=y1*Tc1+y2*Tc2;
z=0.9768;
hR=R_1*(T/M)*(((-3/2)*(A2_1/B_1)*log (1+(B_1*p/z)))+z-1);
hD=y1*(hc1+Cpo1)+y2*(hc2+Cpo2)+hR;
disp ("kJ/kg",hD,"(c).Enthalpy of saturated vapour at D after complete vaporization of liquid at B/L");
// (d).Latent Heat of Vapourization of this Liquid Mixture
hB=-0.2; 
hD_hB=hD-hB; //Latent Heat of Vapourization of this Liquid Mixture
disp ("kJ/kg mixture",hD_hB,"(d). Latent Heat of Vapourization of this Liquid Mixture = ");
