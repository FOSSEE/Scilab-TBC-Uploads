clear;
clc;

//Example - 17.6
//Page number - 602
printf("Example - 17.6 and Page number - 602\n\n");

// Given
T = 749;//[K] - Reactor temperature
P = 1;//[atm] - Reactor pressure
K = 74;

Kp = P^(-1/2);//[atm^(-1/2)]
Ky = K/Kp;

// SO2 + (1/2)*O2 - SO3

// Initial number of moles of the components are
n_SO2_1_in = 10;
n_O2_1_in = 8;
n_SO3_1_in = 0;

// Let the reaction coordinate at equilibrium for the reaction be X
// At equilibrium, the moles of the components be
// n_SO2_1_eq = 10 - X
// n_O2_1_eq = 8 - 0.5*X
// SO3_1_eq = X
// Total moles = 18 - 0.5*X

// The mole fractions of the components at equilibrium are
// y_SO3 = X/(18-0.5*X)
// y_SO2 = (10-X)/(18-0.5*X)
// y_O2 = (8-0.5*X)/(18-0.5*X)

// Ky = y_SO3/(y_SO2*y_O2^(2))
// Ky = (X*(18-0.5*X)^(1/2))/((10-X)*(8-0.5*X)^(1/2))
deff('[y]=f(X)','y= Ky-(X*(18-0.5*X)^(1/2))/((10-X)*(8-0.5*X)^(1/2))');
X_1 = fsolve(11,f);

n_SO3 = X_1;
n_SO2 = 10 - X_1;
n_O2 = 8 - 0.5*X_1;

printf(" (1).The moles of the components at equilibrium are, n_SO3 = %f mol, n_SO2 = %f mol and n_O2 = %f mol\n\n",n_SO3,n_SO2,n_O2);

// Now for the reaction
// 2*SO2 + O2 - 2*SO3

// The equilibrium constant for this reaction is KP^(2)
Ky_prime = Ky^(2);

// At equilibrium, the moles of the components be
// n_SO2_1_eq = 10 - 2*X
// n_O2_1_eq = 8 - X
// SO3_1_eq = 2*X
// Total moles = 18 - X

// The mole fractions of the components at equilibrium are
// y_SO3 = 2*X/(18-X)
// y_SO2 = (10-2*X)/(18-X)
// y_O2 = (8- X)/(18-X)

// Ky_prime = y_SO3^(2)/(y_SO2^(2)*y_O2)
// Ky_prime = ((2*X)^(2)*(18-X))/((10-2*X)^(2)*(8-X))
deff('[y]=f1(X)','y= Ky_prime-((2*X)^(2)*(18-X))/(((10-2*X)^(2))*(8-X))');
X_2 = fsolve(6,f1);

n_SO3_prime = 2*X_2;
n_SO2_prime = 10 - 2*X_2;
n_O2_prime = 8 - X_2;

printf(" (2).The moles of the components at equilibrium are, n_SO3 = %f mol, n_SO2 = %f mol and n_O2 = %f mol\n\n",n_SO3_prime,n_SO2_prime,n_O2_prime);
printf("     Thus the number of moles remains the same irrespective of the stoichoimetry of the reaction")