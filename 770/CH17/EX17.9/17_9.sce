clear;
clc;

//Example - 17.9
//Page number - 606
printf("Example - 17.9 and Page number - 606\n\n");

// Given
// SO2 + (1/2)*O2 - SO3
R = 1.987;//[cal/mol-K]

delta_H_SO2_298 = -70.96;//[kcal/mol] - Enthalpy of formation of S02 at 298.15 K
delta_H_SO3_298 = -94.45;//[kcal/mol] - Enthalpy of formation of S03 at 298.15 K
delta_G_SO2_298 = -71.79;//[kcal/mol] - Gibbs free energy change for formation of SO2 at 298.15 K
delta_G_SO3_298 = -88.52;//[kcal/mol] - Gibbs free energy change for formation of SO3 at 298.15 K

// Cp_0 = a + b*T + c*T^(2) + d*T^(3)

a_SO2 = 6.157;
a_SO3 = 3.918;
a_O2 = 6.085;
b_SO2 = 1.384*10^(-2);
b_SO3 = 3.483*10^(-2);
b_O2 = 0.3631*10^(-2);
c_SO2 = -0.9103*10^(-5);
c_SO3 = -2.675*10^(-5);
c_O2 = -0.1709*10^(-5);
d_SO2 = 2.057*10^(-9);
d_SO3 = 7.744*10^(-9);
d_O2 = 0.3133*10^(-9);

//(1)
T_1 = 298.15;//[K]

delta_H_rkn_298 = delta_H_SO3_298 - delta_H_SO2_298;//[kcal]
delta_H_rkn_298 = delta_H_rkn_298*10^(3);//[cal]
delta_G_rkn_298 = delta_G_SO3_298 - delta_G_SO2_298;//[kcal]
delta_G_rkn_298 = delta_G_rkn_298*10^(3);//[cal]

delta_a = a_SO3 - a_SO2 - (a_O2/2);
delta_b = b_SO3 - b_SO2 - (b_O2/2);
delta_c = c_SO3 - c_SO2 - (c_O2/2);
delta_d = d_SO3 - d_SO2 - (d_O2/2);

// delta_H_rkn_T = delta_H_rkn_298 + integrate('delta_a+(delta_b*T)+(delta_c*T^(2))+(delta_d*T^(3))','T',T_1,T);
// On simplification we get
// delta_H_rkn_T = -22630.14 - 5.2815*T + 0.9587*10^(-2)*T^(2) - 0.5598*10^(-5)*T^(3) + 1.3826*10^(-9)*T^(4)

printf(" (1).The expression for delta_H_rkn_T as a function of T is given by\n");
printf("     delta_H_rkn_T = -22630.14 - 5.2815*T + 0.9587*10^(-2)*T^(2) - 0.5598*10^(-5)*T^(3) + 1.3826*10^(-9)*T^(4)\n\n");

//(2)
// R*log(K_T/K_298) = integrate('delta_H_rkn_T/T^(2)',T,T_1,T)
// First let us calculate K_298.
// delta_G_rkn_T = - R*T*log(K)
K_298 = exp(-delta_G_rkn_298/(R*T_1));

// On substituting the values and simplifying we get the expression
// log(K) = 3.87 + 11380.10/T - 2.6580*log(T) + 0.4825*10^(-2)*T - 0.1409*10^(-5)*T^(2) + 0.2320*10^(-9)*T^(3)

printf(" (2).The expression for log(K) as a function of T is given by\n");
printf("     log(K) = 3.87 + 11380.10/T - 2.6580*log(T) + 0.4825*10^(-2)*T - 0.1409*10^(-5)*T^(2) + 0.2320*10^(-9)*T^(3)\n\n");

//(3)
P = 1;//[atm]
T = 880;//[K]
K = exp(3.87 + 11380.10/T - 2.6580*log(T) + 0.4825*10^(-2)*T - 0.1409*10^(-5)*T^(2) + 0.2320*10^(-9)*T^(3));
Kp = P^(-1/2);//[atm^(-1/2)]
Ky = K/Kp;

// Let the reaction coordinate at equilibrium for the reaction be X
// At equilibrium, the moles of the components be
// n_SO2_eq = 1 - X
// n_O2_eq = 0.5- 0.5*X
// n_SO3_1_eq = X
// Total moles = 1.5-0.5*X

// Ky = (X*(1.5-0.5*X)^(1/2))/((1-X)*(0.5-0.5*X)^(1/2))
deff('[y]=f(X)','y= Ky - (X*(1.5-0.5*X)^(1/2))/((1-X)*(0.5-0.5*X)^(1/2))');
X = fsolve(0.8,f);

// The mole fraction of SO3 at equilibrium is given by
y_SO3 = X/(1.5-0.5*X);

printf(" (3).The mole fraction of SO3 at equilibrium is given by, y_SO3 = %f\n",y_SO3);

