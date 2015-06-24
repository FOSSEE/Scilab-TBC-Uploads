clear;
clc;

//Example - 17.24
//Page number - 631
printf("Example - 17.24 and Page number - 631\n\n");

// Given
T = 600 + 273.15;//[K] - Reaction temperature
P = 1;//[atm] - Reaction pressure

// The Gibbs free energy of formation of various species at 873.15 K are
delta_G_CH4_RT = -2.82;// delta_G_CH4/(R*T)
delta_G_H2O_RT = -29.73;// delta_G_CH4/(R*T)
delta_G_CO_RT = -27.51;// delta_G_CH4/(R*T)
delta_G_H2_RT = -1.46;// delta_G_CH4/(R*T)
delta_G_CO2_RT = -56.68;// delta_G_CH4/(R*T)

// Initial number of moles of the components are
// n_CH4 = 1
// n_H2O = 5
// n_CO = 0
// n_H2 = O
// n_CO2 = 0

// The del(F)/del(n_i) = 0 equations for CH4 (1), H2O (2), CO (3), H2 (4) and CO2 (5) becomes
// delta_G_1_T + R*T*log((n_1*P)/n) + lambda_C + 4*lambda_H = 0
// delta_G_2_T + R*T*log((n_2*P)/n) + 2*lambda_C + lambda_O = 0
// delta_G_3_T + R*T*log((n_3*P)/n) + lambda_c + lambda_O = 0
// delta_G_4_T + R*T*log((n_4*P)/n) + 2*lambda_H = 0
// delta_G_5_T + R*T*log((n_5*P)/n) + lambda_C + 2*lambda_O = 0

// Where n is the total number of moles in the equilibrium reaction mixture. Dividing the above equations by R*T we get
// delta_G_1_T/(R*T) + log((n_1*P)/n) + lambda_C/(R*T) + 4*lambda_H/(R*T) = 0
// delta_G_2_T/(R*T) + log((n_2*P)/n) + 2*lambda_C/(R*T) + lambda_O/(R*T) = 0
// delta_G_3_T/(R*T) + log((n_3*P)/n) + lambda_c/(R*T) + lambda_O/(R*T) = 0
// delta_G_4_T/(R*T) + log((n_4*P)/n) + 2*lambda_H/(R*T) = 0
// delta_G_5_T/(R*T) + log((n_5*P)/n) + lambda_C/(R*T) + 2*lambda_O/(R*T) = 0

// Substituting the values of delta_G_i_T/(R*T) in the above equations,the full set of equations (including elemental balance) becomes
// -2.82 + log(n_1/n) + lambda_C/(R*T) + 4*lambda_H/(R*T) = 0
// -29.73 + log(n_2/n) + 2*lambda_H/(R*T) + lambda_O/(R*T) = 0
// -27.51 + log(n_3/n) + lambda_C/(R*T) + lambda_O/(R*T) = 0
// -1.46 + log(n_4/n) + 2*lambda_H/(R*T) = 0
// -56.68 + log(n_5/n) + lambda_C/(R*T) + 2*lambda_O/(R*T) = 0

// The constraint equations are
// n_1 + n_3 + n_5  = 1 // (moles of C in the reaction mixture = 1)
// 4*n_1 + 2*n_2 + 2*n_4 = 14  // (moles of H in the reaction mixture = 14)
// n_2 + n_3 + 2*n_5 = 5  // (moles of O in the raection mixture = 5)

// The total moles are given by
// n = n_1 + n_2 + n_3 + n_4 + n_5

function[f]=solution(x)
f(1) = -2.82 + log(x(1)/x(6)) + x(7) + 4*x(8);
f(2) = -29.73 + log(x(2)/x(6)) + 2*x(8) + x(9);
f(3) = -27.51 + log(x(3)/x(6)) + x(7) + x(9);
f(4) = -1.46 + log(x(4)/x(6)) + 2*x(8);
f(5) = -56.68 + log(x(5)/x(6)) + x(7) + 2*x(9);
f(6) = x(1) + x(3) +x(5) - 1;
f(7) = 4*x(1) + 2*x(2) + 2*x(4) - 14;
f(8) = x(2) + x(3) +2*x(5) - 5;
f(9) = x(1)+ x(2) + x(3) + x(4) + x(5) - x(6); 

funcprot(0);
endfunction
x = [0.01,3.5,0.2,3.0,0.5,5.0,2.0,1.0,25.0];
y = fsolve(x,solution);

printf(" n_1 = %f mol\n",y(1));
printf(" n_2 = %f mol\n",y(2));
printf(" n_3 = %f mol\n",y(3));
printf(" n_4 = %f mol\n",y(4));
printf(" n_5 = %f mol\n",y(5));
printf(" n = %f mol\n",y(6));
printf(" lambda_C/RT = %f\n",y(7));
printf(" lambda_H/RT = %f\n",y(8));
printf(" lambda_O/RT = %f\n\n",y(9));

printf(" The Lagrange multiplier values do not have any physical significance\n");

