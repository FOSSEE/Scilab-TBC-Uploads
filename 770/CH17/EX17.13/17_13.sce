clear;
clc;

//Example - 17.13
//Page number - 611
printf("Example - 17.13 and Page number - 611\n\n");

// Given
T_1 = 298.15;//[K]
T = 2600;//[K]
R = 1.987;//[cal/mol-K] - Universal gas constant

// Cp_0 = a + b*T + c*T^(2) + d*T^(3)
delta_H_CO_298 = -26.416;//[kcal/mol] - Enthalpy of formation of CO at 298.15 K
delta_G_CO_298 = -32.808;//[kcal/mol] - Gibbs free energy change for formation of CO at 298.15 K
delta_H_CO2_298 = -94.052;//[kcal/mol] - Enthalpy of formation of C02 at 298.15 K
delta_G_CO2_298 = -94.260;//[kcal/mol] - Gibbs free energy change for formation of CO2 at 298.15 K

// CO + (1/2)*O2 - CO2

a_CO = 6.726;
a_O2 = 6.0685;
a_CO2 = 5.316;
b_CO = 0.04001*10^(-2);
b_O2 = 0.3631*10^(-2);
b_CO2 = 1.4285*10^(-2);
c_CO = 0.1283*10^(-5);
c_O2 = -0.1709*10^(-5);
c_CO2 = -0.8362*10^(-5);
d_CO = -0.5307*10^(-9);
d_O2 = 0.3133*10^(-9);
d_CO2 = 1.784*10^(-9);


delta_H_rkn_298 = delta_H_CO2_298 - delta_H_CO_298;//[kcal]
delta_H_rkn_298 = delta_H_rkn_298*10^(3);//[cal]
delta_G_rkn_298 = delta_G_CO2_298 - delta_G_CO_298;//[kcal]
delta_G_rkn_298 = delta_G_rkn_298*10^(3);//[cal]

delta_a = a_CO2 - (a_CO) - (a_O2/2);
delta_b = b_CO2 - (b_CO) - (b_O2/2);
delta_c = c_CO2 - (c_CO) - (c_O2/2);
delta_d = d_CO2 - (d_CO) - (d_O2/2);

// delta_H_rkn_T = delta_H_rkn_298 + integrate('delta_a+(delta_b*T)+(delta_c*T^(2))+(delta_d*T^(3))','T',T_1,T);
// On simplification we get
delta_H_rkn_T = -66773.56 - 4.45*T + 0.605*10^(-2)*T^(2) - 0.29*10^(-5)*T^(3) + 0.54*10^(-9)*T^(4);

// log(K/K_298) = integrate('delta_H_rkn_T/(R*T^(2))','T',T_1,T)

// We know that  delta_G_rkn_T = -R*T*log(K)
// At 298.15 K
K_298 = exp(-delta_G_rkn_298/(R*T_1) );

// Therfore on simplification we get
//log(K) = 2.94 + 33605.2/T - 2.24*log(T) + 0.304*10(-2)*T - 0.073*10^(-5)*T^(2) + 0.09*10^(-9)*T^(3)
K = exp(2.94 + 33605.2/T - 2.24*log(T) + 0.304*10^(-2)*T - 0.073*10^(-5)*T^(2) + 0.09*10^(-9)*T^(3));

printf("  The value of equilibrium constant at 2600 K is given by, K_298 = %f\n\n",K);


//(a)
P_1 = 1;//[atm]
Kp_1 = P_1^(-1/2);
Ky_1 = K/Kp_1;

// Let the reaction coordinate at equilibrium for the reaction be X
// At equilibrium, the moles of the components be
// n_CO_1_eq = 1 - X
// n_02_1_eq = 0.5- 0.5X
// n_CO2_1_eq = X
// Total moles = 1.5 - 0.5*X

// Ky = y_CO2/(y_CO^(1/2)*y_CO)
//ky = (X*(1.5-0.5*X)^(1/2))/((1-X)*(0.5-0.5*X)^(1/2))

deff('[y]=f(X)','y= Ky_1-(X*(1.5-0.5*X)^(1/2))/((1-X)*(0.5-0.5*X)^(1/2))');
X_1 = fsolve(0.9,f);

y_CO2_1 = X_1/(1.5-0.5*X_1);
y_CO_1 = (1-X_1)/(1.5-0.5*X_1);
y_O2_1 = (0.5-0.5*X_1)/(1.5-0.5*X_1);

printf(" (a).The equilibrium composition (at 1 atm) is given by, y_CO2 = %f, y_CO = %f and y_O2 = %f\n\n",y_CO2_1,y_CO_1,y_O2_1);

//(b)
P_2 = 10;//[atm]
Kp_2 = P_2^(-1/2);
Ky_2 = K/Kp_2;

// Ky = y_CO2/(y_CO^(1/2)*y_CO)
//ky = (X*(1.5-0.5*X)^(1/2))/((1-X)*(0.5-0.5*X)^(1/2))

deff('[y]=f1(X)','y= Ky_2-(X*(1.5-0.5*X)^(1/2))/((1-X)*(0.5-0.5*X)^(1/2))');
X_2 = fsolve(0.9,f1);

y_CO2_2 = X_2/(1.5-0.5*X_2);
y_CO_2 = (1-X_2)/(1.5-0.5*X_2);
y_O2_2 = (0.5-0.5*X_2)/(1.5-0.5*X_2);

printf(" (b).The equilibrium composition (at 10 atm) is given by, y_CO2 = %f, y_CO = %f and y_O2 = %f\n\n",y_CO2_2,y_CO_2,y_O2_2);

//(c)
P_3 = 1;//[atm]
Kp_3 = P_3^(-1/2);
Ky_3 = K/Kp_3;

// Ky = y_CO2/(y_CO^(1/2)*y_CO)
//ky = (X*(1.5-0.5*X)^(1/2))/((1-X)*(0.5-0.5*X)^(1/2))

// At equilibrium, the moles of the components be
// n_CO_3_eq = 1 - X
// n_02_3_eq = 0.5- 0.5X
// n_CO2_3_eq = X
// n_N2_eq = 1;
// Total moles = 2.5 - 0.5*X

deff('[y]=f2(X)','y= Ky_3-(X*(2.5-0.5*X)^(1/2))/((1-X)*(0.5-0.5*X)^(1/2))');
X_3 = fsolve(0.9,f2);

y_CO2_3 = X_3/(2.5-0.5*X_3);
y_CO_3 = (1-X_3)/(2.5-0.5*X_3);
y_O2_3 = (0.5-0.5*X_3)/(2.5-0.5*X_3);
y_N2 = 1/(2.5-0.5*X_3);

printf(" (c).The equilibrium composition (at 1 atm and 1 mol N2) is given by, y_CO2 = %f, y_CO = %f , y_O2 = %f and y_N2 = %f\n\n",y_CO2_3,y_CO_3,y_O2_3,y_N2);

