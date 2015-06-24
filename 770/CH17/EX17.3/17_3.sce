clear;
clc;

//Example - 17.3
//Page number - 599
printf("Example - 17.3 and Page number - 599\n\n");

// Given
T = 600;//[K] -  Reactor temperature
P = 300;//[atm] - Reactor pressure
K = 0.91*10^(-4);// Equilibrium constant

// The fugacity coefficients of the components are
phi_CO = 1.0;
phi_H2 = 1.2;
phi_CH3OH = 0.47;

// CO + 2*H2 - CH3OH 

// For gas phase reactions the standard state is pure ideal gas and thus fi_0 = 1 atm and thus
// ai_cap = fi_cap/fi_0 = yi*P*phi_i_cap/1
// Thus K = Ky*Kp*K_phi
Kp = P^(1-3);
K_phi = phi_CH3OH/(phi_CO*phi_H2^(2));
Ky = K/(Kp*K_phi);

// Let the reaction coordinate at equilibrium for the reaction be X
// At equilibrium ,the moles of the components be 
// n_CO = 1 - X
// n_H2 = 3 - 2*X
// n_CH3OH = X
// Total moles = 4 - 2*X

// The mole fractions of the components at equilibrium are
// y_CO = (1-X)/(4-2*X)
// y_H2 = (3-2*X)/(4-2*X)
// y_CH3OH = (X)/(4-2*X)

// Ky = y_CH3OH/(y_CO*y_H2^(2)) = (X/(4-2*X))/(((1-X)/(4-2*X))*((3-2*X)/(4-2*X))^(2))
deff('[y]=f(X)','y=Ky-(X/(4-2*X))/(((1-X)/(4-2*X))*((3-2*X)/(4-2*X))^(2))');
X = fsolve(0.1,f);

// Therefore at equilibrium 
y_CO = (1-X)/(4-2*X);
y_H2 = (3-2*X)/(4-2*X);
y_CH3OH = (X)/(4-2*X);

printf(" The mole fractions at equilibrium are y_CO = %f, y_H2 = %f and y_CH3OH = %f",y_CO,y_H2,y_CH3OH);



