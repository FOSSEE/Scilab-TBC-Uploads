clear;
clc;

//Example - 17.7
//Page number - 603
printf("Example - 17.7 and Page number - 603\n\n");

// Given
T = 500;//[K]
// For the reaction,  0.5*A2 + 0.5*B2 - AB
delta_G = -4200;//[J/mol]
R = 8.314;//[J/mol*K] - Universal gas constant

//(1)
// A2 + B2 - 2*AB

// We know delta_G_rkn_0 = -R*T*log(K) 
delta_G_1 = 2*delta_G;
K_1 = exp(-delta_G_1/(R*T));// Equilibrium constant at 500 K for the above reaction
// As can be seen the reaction is not affected by pressure and therefore K = Ky as Kp = 1 
Ky = K_1;

// Initial number of moles of the components are
n_A2_1_in = 0.5;
n_B2_1_in = 0.5;
n_AB_1_in = 0;

// Let the reaction coordinate at equilibrium for the reaction be X
// At equilibrium, the moles of the components be
// n_A2_1_eq = 0.5 - X
// n_B2_1_eq = 0.5- X
// n_AB_1_eq = 2*X
// Total moles = 1

// Ky = (2*X)^(2)/(0.5-X)^(2)
deff('[y]=f(X)','y= Ky-(2*X)^(2)/(0.5-X)^(2)');
X_1 = fsolve(0.2,f);

// The mole fractions of the components at equilibrium are
y_A2_1 = 0.5 - X_1;
y_B2_1 = 0.5- X_1;
y_AB_1 = 2*X_1;

printf(" (1).The mole fractions at equilibrium are y_A2 = %f, y_B2 = %f and y_AB = %f\n\n",y_A2_1,y_B2_1,y_AB_1);

//(2)
// 0.5*A2 + 0.5*B2 - AB

// We know delta_G_rkn_0 = -R*T*log(K) 
delta_G_2 = delta_G;
K_2 = exp(-delta_G_2/(R*T));// Equilibrium constant at 500 K for the above reaction

// As can be seen the reaction is not affected by pressure and therefore K = Ky as Kp = 1 
Ky_2 = K_2;

// Initial number of moles of the components are
n_A2_2_in = 0.5;
n_B2_2_in = 0.5;
n_AB_2_in = 0;

// Let the reaction coordinate at equilibrium for the reaction be X
// At equilibrium, the moles of the components be
// n_A2_2_eq = 0.5 - 0.5*X
// n_B2_2_eq = 0.5- 0.5*X
// n_AB_2_eq = X
// Total moles = 1

// Ky = y_AB/(y_A2^(1/2)*y_B2^(1/2))
// Ky = X/(0.5 - 0.5*X)
X_2 = 0.5*Ky_2/(1+0.5*Ky_2);

// The mole fractions of the components at equilibrium are
y_A2_2 = 0.5 - 0.5*X_2;
y_B2_2 = 0.5- 0.5*X_2;
y_AB_2 = X_2;

printf(" (2).The mole fractions at equilibrium are y_A2 = %f, y_B2 = %f and y_AB = %f\n\n",y_A2_2,y_B2_2,y_AB_2);

//(3)
// 2*AB -  A2 + B2

K_3 = 1/K_1;// Equilibrium constant at 500 K for the above reaction
// As can be seen the reaction is not affected by pressure and therefore K = Ky as Kp = 1 
Ky_3 = K_3;

// Initial number of moles of the components are
n_AB_3_in = 1;
n_A2_3_in = 0;
n_B2_3_in = 0;

// Let the reaction coordinate at equilibrium for the reaction be X
// At equilibrium, the moles of the components be
// n_AB_3_eq = 1 - X
// n_A2_3_eq = X/2
// n_B2_3_eq = X/2
// Total moles = 1

// Ky = (X/2)^(2)/(1-X)^(2)
deff('[y]=f1(X)','y= Ky_3-(X/2)^(2)/(1-X)^(2)');
X_3 = fsolve(0.4,f1);

// The mole fractions of the components at equilibrium are
y_A2_3 = X_3/2;
y_B2_3 = X_3/2;
y_AB_3 = 1-X_3;

printf(" (3).The mole fractions at equilibrium are y_A2 = %f, y_B2 = %f and y_AB = %f\n\n",y_A2_3,y_B2_3,y_AB_3);

