clear;
clc;

//Example - 7.40
//Page number - 277
printf("Example - 7.40 and Page number - 277\n\n");

// Given
T = 320 + 273.15;//[K]
P_1 = 70;//[bar]
P_2 = 170;//[bar]
R = 8.314;//[J/mol*K] - Universal gas constant

//(a)
// dG = R*T*dlog(f)
// G - G_ig = R*T*log(f/f_ig)

// From steam table the low pressure that is available is 1 kPa.
f_ig = 1;//[kPa] - Assuming ideal gas behaviour at such low pressure

// At 1 kPa (under saturated conditions)
P_sat = 112.891;//[bar]
// Therefore at both 1 kPa and 70 bar the stem is superheated and byond a pressure of 112.891 bar it is compressed liquid.

// For superheated steam table at 1 kPa and 320 C, as repoted in the book
H_1 = 3117.08;//[kJ/kg] - Enthalpy
S_1 = 10.41232;//[kJ/kg-K] - Entropy

// For superheated steam table at 70 bar and 320 C, as repoted in the book
H_2 = 2916.92;//[kJ/kg] - Enthalpy
S_2 = 6.0651;//[kJ/kg-K] - Entropy

// At 70 bar and 320 C,
G = H_2 - T*S_2;//[kJ/kg] - Gibbs free energy
// At 1 kPa and 320 C
G_ig = H_1 - T*S_1;//[kJ/kg] - Gibbs free energy

// log(f/f_ig) = (G - G_ig)/(R*T)
f = f_ig*(exp((G - G_ig)*18/(R*T)));//[kPa]
f = f*10^(-2);//[bar]

// At 70 bar
phi = f/P_1;

printf(" (a).The fugacity of steam at 320 C and 70 bar is %f bar\n",f);
printf("     The fugacity coefficient at 320 C and 70 bar is, phi = %f\n\n",phi);

//(b)
// Now consider saturated steam at 320 C. We have
P_sat = 112.891;//[bar]
V_liquid = 1.5;//[cm^(3)/mol] - Molar vlume of saturated liquid
V_liquid = V_liquid*10^(-6);//[m^(3)/mol]
V_vapour = 15.48;//[cm^(3)/mol] - Molar vlume of saturated vapour
U_liqid = 1445.7;//[Kj/kg] - Internal energy of satuarted liquid
U_vapour = 2528.9;//[kJ/kg] - Internal energy of satuarted vapour
H_liquid = 1462.6;//[kJ/kg] - Enthalpy of saturated liquid
H_vapour = 2703.7;//[kJ/kg] - Enthalpy of saturated vapour
S_liquid = 3.45;//[kJ/kg-K]  - Entropy of saturated liquid
S_vapour = 5.5423;//[kJ/kg-K] - Entropy of saturated vapour

// Now let us calculate Gibbs free energy of saturated liquid and saturated vapour
G_liquid = H_liquid - T*S_liquid;//[kJ/kg]
G_vapour = H_vapour - T*S_vapour;//[kJ/kg]
// Note that under saturated conditions
// G_sat = G_liquid = G_vapour
G_sat = G_liquid;//[kJ/kg]

// log(f_sat/f_ig) = (G_sat - G_ig)/(R*T)
f_sat = f_ig*(exp((G_sat - G_ig)*18/(R*T)));//[kPa]
f_sat = f_sat*10^(-2);//[bar]

phi_sat = f_sat/P_sat;

// And now the fugacity is to be determined at 320 C and P = 170 bar. We know the following relation for compressed liquid.
// f_CL = f_sat*exp(V_liquid*(P-P_sat)/(R*T))
f_CL = f_sat*exp(V_liquid*18*(P_2-P_sat)*10^(5)/(R*T));//[bar]

// Therefore the fugacity coefficient at 170 bar and 320 C is given by
phi_2 = f_CL/P_2;

printf(" (b).The fugacity of steam at 320 C and 170 bar is %f bar\n",f_CL);
printf("     The fugacity coefficient at 320 C and 170 bar is, phi = %f\n\n",phi_2);


