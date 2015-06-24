clear;
clc;

//Example - 17.2
//Page number - 598
printf("Example - 17.2 and Page number - 598\n\n");

// Given
P = 1;//[atm] - Reactor pressure
T = 749;//[K] - Reactor temperature
K = 74;// Equlibrium constant

// SO2 + (1/2)*O2 - SO3

Kp = P^(1);
Ky = K/Kp;

//(1)
// Initial number of moles of the components are
n_SO2_1_in = 12;
n_O2_1_in = 9;
n_SO3_1_in = 0;

// Let the reaction coordinate at equilibrium for the reaction be X
// At equilibrium, the moles of the components be
// n_SO2_1_eq = 12 - X
// n_O2_1_eq = 9 - 0.5*X
// n_SO3_1_eq = X
// Total moles = 21 - 0.5*X

// The mole fractions of the components at equilibrium are
// y_SO3 = X/(21-0.5*X)
// y_SO2 = (12-X)/(21-0.5*X)
// y_O2 = (9-0.5*X)/(21-0.5*X)

// Ky = y_SO3/(y_SO2*y_O2^(2))
// Ky = (X*(21-0.5*X)^(1/2))/((12-X)*(9-0.5*X)^(1/2))
deff('[y]=f(X)','y= Ky-(X*(21-0.5*X)^(1/2))/((12-X)*(9-0.5*X)^(1/2))');
X_1 = fsolve(11,f);

y_SO3_1 = X_1/(21-0.5*X_1);
y_SO2_1 = (12-X_1)/(21-0.5*X_1);
y_O2_1 = (9-0.5*X_1)/(21-0.5*X_1);

printf(" (1).The moles of SO3 formed = %f mol\n",X_1);
printf("     The mole fractions at equilibrium are y_S03 = %f, y_SO2 = %f and y_O2 = %f\n\n",y_SO3_1,y_SO2_1,y_O2_1);

//(2)
// Initial number of moles of the components are
n_SO2_2_in = 24;
n_O2_2_in = 18;
n_SO3_2_in = 0;

// At equilibrium, the moles of the components be
// n_SO2_1_eq = 24 - X
// n_O2_1_eq = 18 - 0.5*X
// n_SO3_1_eq = X
// Total moles = 42 - 0.5*X

// The mole fractions of the components at equilibrium are
// y_SO3 = X/(42-0.5*X)
// y_SO2 = (24-X)/(42-0.5*X)
// y_O2 = (18-0.5*X)/(42-0.5*X)

// Ky = y_SO3/(y_SO2*y_O2^(2))
// Ky = (X*(42-0.5*X)^(1/2))/((24-X)*(18-0.5*X)^(1/2))
deff('[y]=f1(X)','y= Ky-(X*(42-0.5*X)^(1/2))/((24-X)*(18-0.5*X)^(1/2))');
X_2 = fsolve(22,f1);

y_SO3_2 = X_2/(42-0.5*X_2);
y_SO2_2 = (24-X_2)/(42-0.5*X_2);
y_O2_2 = (18-0.5*X_2)/(42-0.5*X_2);
printf(" (2).The moles of SO3 formed = %f mol\n",X_2);
printf("     The mole fractions at equilibrium are y_S03 = %f, y_SO2 = %f and y_O2 = %f\n\n",y_SO3_2,y_SO2_2,y_O2_2);

//(3)
// Initial number of moles of the components are
n_SO2_3_in = 12;
n_O2_3_in = 9;
n_SO3_3_in = 0;
n_N2 = 79;

// At equilibrium, the moles of the components be
// n_SO2_1_eq = 12 - X
// n_O2_1_eq = 9 - 0.5*X
// n_SO3_1_eq = X
// Total moles = 100 - 0.5*X

// The mole fractions of the components at equilibrium are
// y_SO3 = X/(100-0.5*X)
// y_SO2 = (12-X)/(100-0.5*X)
// y_O2 = (9-0.5*X)/(100-0.5*X)

// Ky = y_SO3/(y_SO2*y_O2^(2))
// Ky = (X*(100-0.5*X)^(1/2))/((12-X)*(9-0.5*X)^(1/2))
deff('[y]=f2(X)','y= Ky-(X*(100-0.5*X)^(1/2))/((12-X)*(9-0.5*X)^(1/2))');
X_3 = fsolve(10,f2);

y_SO3_3 = X_3/(100-0.5*X_3);
y_SO2_3 = (12-X_3)/(100-0.5*X_3);
y_O2_3 = (9-0.5*X_3)/(100-0.5*X_3);

printf(" (3).The moles of SO3 formed = %f mol\n",X_3);
printf("     The mole fractions at equilibrium are y_S03 = %f, y_SO2 = %f and y_O2 = %f\n\n",y_SO3_3,y_SO2_3,y_O2_3);





