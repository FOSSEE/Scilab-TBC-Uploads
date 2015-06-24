clear;
clc;

//Example - 17.5
//Page number - 601
printf("Example - 17.5 and Page number - 601\n\n");

// Given
T = 400;//[K] -  Reactor temperature
P = 1;//[atm] - Reactor pressure
K = 1.52;// Equilibrium constant
y_H2 = 0.4;// Equilibrium mole fraction of hydrogen

// CO(g) + 2*H_2(g) - CH3OH(g)

// K = y_CH3OH/(y_CO*y_H2^(2)*P^(2))
// Let total number of moles at equilibrium be 1
// y_CH3OH = 0.6 - y_CO;
// (0.6 - y_CO)/y_CO = K*P^(2)*y_H2^(2)

y_CO = 0.6/(1 + K*P^(2)*y_H2^(2));
y_CH3OH = 0.6 - y_CO;

printf(" The mole fractions are, y_CO = %f and y_CH3OH = %f \n",y_CO,y_CH3OH);

















