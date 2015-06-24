clear;
clc;

//Example - 10.6
//Page number - 339
printf("Example - 10.6 and Page number - 339\n\n");

//Given
T = 220 + 273.15;//[K] - Temperature
Tc = 562.2;//[K] - Critical temperature
Pc = 48.98;//[bar] - Critical pressure
Pc = Pc*10^(5);//[Pa]
w = 0.210;
R = 8.314;//[J/mol*K] - Universal gas constant
P_sat = 1912.86;//[kPa] - Saturation pressure at 220 C
P_sat = P_sat*10^(3);//[Pa]
Mol_wt = 78.114;//[g/mol] - Molecular weight of benzene

//(1)
// Since liquid and vapour are in equilibrium the fugacity is saturated fugacity (f_sat) and can be calculated using virial gas equation of state
// At 220 C
Tr = T/Tc;// Reduced temperature
B_0 = 0.083-(0.422/(Tr)^(1.6));
B_1 = 0.139-(0.172/(Tr)^(4.2));
//We know,(B*Pc)/(R*Tc) = B_0 + (w*B_1)
B = ((B_0 + (w*B_1))*(R*Tc))/Pc;//[m^(3)/mol] - Second virial coefficient

// We know that log(f/P) = (B*P)/(R*T)
// Thus at saturated conditions
// log(f_sat/P_sat) = B*P_sat/(R*T)
f_sat = P_sat*(exp((B*P_sat)/(R*T)));//[Pa]
f_sat = f_sat*10^(-3);//[kPa]

printf(" (1).The fugacity of liquid benzene is %f kPa\n\n",f_sat);

//(2)
P = 2014.7;// [psia] - Total gauge pressure
P = 138.94;// [bar]
P = P*10^(5);// [Pa]
den = 0.63;// [g/cm^(3)] - density of benzene
den = den*10^(3);// [kg/m^(3)]

// Therefore specific volume is 
V = 1/den;//[m/^(3)/kg]
// Molar volume is given by
V = V*Mol_wt*10^(-3);//[m^(3)/mol]

// Thus fugacity at 220 C and pressure P is given by 
f = f_sat*(exp((V*(P-P_sat))/(R*T)));

printf(" (2).The fugacity of liquid benzene is %f kPa\n\n",f);


