clear;
clc;

//Example - 17.17
//Page number - 618
printf("Example - 17.17 and Page number - 618\n\n");

// Given
T = 700 + 273.15;//[K]
K = 7.403;// Equilibrium constant for the reaction at 700 C

// CH4 - C (s) + 2*H2 

// The equilibrium constant of the reaction is given by
// K = (a_C*a_H2^(2))/a_CH4

// Since carbon is pure therefore its activity is given by
// a_C = f/f_0 = 1 as pressure is 1 atm.
// Since the pressure is low,therefore the gas phase can be taken to be ideal,therefore
// K = (y_H2^(2)*P^(2))/(y_CH4*P) = y_H2^(2)/y_CH4     (as P = 1 atm)
Ky = K;// (Kp = 1 atm)

// Initial moles of the species are
n_CH4 = 1;
n_H2 = 0;
n_C = 0;

// Let the reaction coordinate at equilibrium for the reaction be X
// Moles at equilibrium be
// n_CH4_eq = 1 -X
// n_H2_eq = 2*x
// n_C_eq = X

// Moles present in gas phase
// n_CH4_gas = 1 -X
// n_H2_gas = 2*x
// Total moles = 1 + X

// gas phase mole fraction 
// y_CH4_gas = (1 -X)/(1+X)
// y_H2_gas = 2*x/(1+X)

// Ky = y_H2_gas^(2)/y_CH4_gaS
X = (K/(4+K))^(1/2);

printf(" The number of moles of carbon black formed from one mole of methane  is %f mol\n\n",X);

// Therefore mole fraction of components in the gas phase at equilibrium is 
y_CH4 = (1-X)/(1+X);
y_H2 = 2*X/(1+X);

printf(" The mole fraction of components in the gas phase at equilibrium is given by y_CH4 = %f and y_H2 = %f \n",y_CH4,y_H2);



