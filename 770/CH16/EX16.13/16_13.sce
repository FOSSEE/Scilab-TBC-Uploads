clear;
clc;

//Example - 16.13
//Page number - 586
printf("Example - 16.13 and Page number - 586\n\n");

//Given
R = 8.314;//[J/mol*K] - universal gas constant
T = 173.15;//[K] - Surrounding temperature
P = 60;//[bar]
P = P*10^(5);//[Pa] 

//componenet 1 : CO2 (1)
//componenet 2 : H2 (2)
P_1_sat = 0.1392;//[bar] - Vapour pressre of pure solid CO2
P_1_sat = P_1_sat*10^(5);//[bar]
V_s_1 = 27.6;//[cm^(3)/mol] - Molar volume of solid CO2
V_s_1 = V_s_1*10^(-6);//[m^(3)/mol]
n_1 = 0.01;//[mol] - Initial number of moles of CO2
n_2 = 0.99;//[mol] - Initial number of moles of H2

//Let us determine the fugacity of solid CO2 (1) at 60 C and 173.15 K
// f_1 = f_1_sat*exp(V_s_1*(P-P_1_sat)/(R*T))

//Since vapour pressure of pure solid CO2 is very small, therefore
f_1_sat = P_1_sat;
f_1 = f_1_sat*exp(V_s_1*(P-P_1_sat)/(R*T));

//Since gas phase is ideal therefore
// y1*P = f_1
y1 = f_1/P;

//Number of moles of H2 in vapour phase at equilibrium remains the same as initial number of moles.
//Number of moles of CO2 in vapour phase at equilibrium can be calculated as
//y1 = (n_1_eq/(n_1_eq + n_2)). Therefore
n_1_eq = n_2*y1/(1-y1);

//Therefore moles of CO2 precipitated is
n_ppt = n_1 - n_1_eq;//[mol]

printf("The moles of CO2 precipitated is %f mol",n_ppt);

