clear;
clc;

//Example - 10.24
//Page number - 367
printf("Example - 10.24 and Page number - 367\n\n");

//Given
Vol = 0.057;//[m^(3)] - Volume of car tyre
P_1 = 300;//[kPa] - Initial pressure
P_1 = P_1*10^(3);//[Pa]
T_1 = 300;//[K] - Initial temperature
P_2 = 330;//[kPa] - Finnal pressure
P_2 = P_2*10^(3);//[Pa]
R = 8.314;//[J/mol*K] - Universal gas constant
Cv_0 = 21;//[J/mol-K] - Heat capacity for air 

// For oxygen
Tc_O2 = 154.6;//[K] - Critical temperature
Pc_O2 = 50.43;//[bar] - Critical pressure
Pc_O2 = Pc_O2*10^(5);//[Pa]
y1 = 0.21;// - Mole fraction of oxygen
// For nitrogen
Tc_N2 = 126.2;//[K] - Critical temperature
Pc_N2 = 34.00;//[bar] - Critical pressure
Pc_N2 = Pc_N2*10^(5);//[Pa]
y2 = 0.79;// - Mole fraction of nitrogen

// (1)
// Assuming ideal gas behaviour. The volume remains the same,therefore,we get
// P_1/T_1 = P_2/T_2
T_2 = P_2*(T_1/P_1);//[K]

n = (P_1*Vol)/(R*T_1);//[mol] - Number of moles
delta_U = n*Cv_0*(T_2-T_1);//[J]

printf(" (1).The change in internal energy (for ideal gas behaviour) is %f J\n\n",delta_U);

//(2)
//  For van der Walls equation of state 
a_O2 = (27*R^(2)*Tc_O2^(2))/(64*Pc_O2);//[Pa-m^(6)/mol^(2)]
a_N2 = (27*R^(2)*Tc_N2^(2))/(64*Pc_N2);//[Pa-m^(6)/mol^(2)]
a_12 = (a_O2*a_N2)^(1/2);
b_O2 = (R*Tc_O2)/(8*Pc_O2);//[m^(3)/mol]
b_N2 = (R*Tc_N2)/(8*Pc_N2);//[m^(3)/mol]

// For the mixture
a = y1^(2)*a_O2 + y2^(2)*a_N2 + 2*y1*y2*a_12;//[Pa-m^(6)/mol^(2)]
b = y1*b_O2 + y2*b_N2;//[m^(3)/mol]

// From the cubic form of van der Walls equation of state
// At 300 K and 300 kPa,
deff('[y]=f1(V)','y=V^(3)-(b+(R*T_1)/P_1)*V^(2)+(a/P_1)*V-(a*b)/P_1');
V_1 = fsolve(0.1,f1);
V_2 = fsolve(10,f1);
V_3 = fsolve(100,f1);
// The above equation has only 1 real root, other two roots are imaginary
V = V_1;//[m^(3)/mol]

// Now at P = 330 kPa and at molar volume V
// The van der Walls equation of state is
// (P + a/V^(2))*(V - b) = R*T
T_2_prime = ((P_2 + a/V^(2))*(V - b))/R;//[K]
n_prime = Vol/V;//[mol]

// Total change in internal energy is given by
// delta_U_prime = n_prime*delta_U_ig + n_prime*(U_R_2 - U_R_1)
// delta_U_prime = n_prime*Cv_0*(T_2_prime - T_1) + n_prime*a(1/V_2 - 1/V_1);
// Since V_1 = V_2 = V, therefore
delta_U_prime = n_prime*Cv_0*(T_2_prime - T_1);

printf(" (2).The change in internal energy (for van der Walls equation of state) is %f J\n\n",delta_U_prime);






