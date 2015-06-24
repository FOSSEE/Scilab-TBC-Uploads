clear;
clc;

// Illustration 3.3
// Page: 69

printf('Illustration 3.3 - Page: 69\n\n');

// solution

// Heat transfer analog to Eqn. 3.12
// The Eqn. remains the same with the dimensionless conc. ratio replaced by ((tl-to)/(ti-to))

// The dimensionless group:
// eta = 2*Dab*L/(3*del^2*velocity);
// eta = (2/3)*(Dab/(del*velocity))*(L/del);
// Ped = Peclet no. for mass transfer
// eta = (2/3)*(1/Ped)*(L/del);

// For heat transfer is replaced by
// Peh = Peclet no. for heat transfer
// eta = (2/3)*(1/Peh)*(L/del);
// eta = (2/3)*(alpha/(del*velocity))*(L/del);
// eta = (2*alpha*L)/(3*del^2*velocity);
printf('Heat transfer analog to Eqn. 3.21 is eta = (2*alpha*L)/(3*del^2*velocity)');