clear;
clc;

//Example - 7.41
//Page number - 278
printf("Example - 7.41 and Page number - 278\n\n");

//Given
T = 300 + 273.15;//[K]
P_1 = 12500*10^(3);//[Pa]
P_2 = 8581*10^(3);//[Pa]
P_3 = 300*10^(3);//[Pa]
V_liq = 1.404;//[cm^(3)/g] - Specific volume of liquid
V_liq = (V_liq/10^(6))*18.015;//[m^(3)/mol]
R = 8.314;//[J/mol*K] - Universal gas constant

// state 1: 300 C, 12500 kPa
// state 2: 300 C, 8581 kPa
// state 3: 300 C, 300 kPa

// From state 1 to state 2 the system is liquid water and if the molar volume of liquid is assumed costant we can write
// G_2 - G_1 = V_liq*(P_2 - P_1)
// G_2 - G_1 = R*Tlog(f_2/f_1)
// Comparing the above two equations we get
// (f_2/f_1) = exp((V_liq*(P_2 - P_1)/(R*T))
f2_f1 = exp((V_liq*(P_2 - P_1)/(R*T))); // (f_2/f_1) = f2_f1 (say)

// In state 2 the fugacity of liquid is same as that of saturated vapour and for the vapour phase change from state 2 to 3 the fugacity ratio is calculated using 
// G_3 - G_2 = R*Tlog(f_3/f_2)

// At 300 C, 8581 kPa 
H_liq_2 = 2749.0;//[kJ/kg]
S_vap_2 = 5.7045;//[kJ/kg-K]
G_vap_2 = -520.53;//[kJ/kg]
G_vap_2 = G_vap_2*18.015;//[J/mol]

// At 300 C, 300 kPa 
H_3 = 3069.3;//[kJ/kg]
S_3 = 7.7022;//[kJ/kg-K]
G_3 = -1345.22;//[kJ/kg]
G_3 = G_3*18.015;//[J/mol]

// Substituting and solving the equation  G_3 - G_2 = R*Tlog(f_3/f_2)
f3_f2 = exp((G_3 - G_vap_2)/(R*T));//  (f_3/f_2) = f3_f2 (say)

// (f_3/f_1) = (f_3/f_2)*(f_2/f_1)
f3_f1 = f3_f2*f2_f1;

printf(" The ratio of fugacity in the final state to that in the initial state is given by f3/f2 = %f",f3_f2);


