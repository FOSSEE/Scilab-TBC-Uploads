// Scilab Code Ex9.4 Average number of collsions for thermalization of neutrons: Pg:202 (2008)
A = 9;    // Mass number of beryllium
xi = 2/A - 4/(3*A^2);    // Logarithmic energy decrement of energy distribution of neutron
E0 = 2;    // Initial energy of neutrons, MeV
En_prime = 0.025e-06;    // Thermal energy of the neutrons, MeV
n = 1/xi*log(E0/En_prime);    // Average number of collisions needed for neutrons to thermalize
En_half = 1/2*E0;    // Half of the initial energy of neutrons, MeV
n_half = 1/xi*log(E0/En_half);    // Number of collsions for half the initial energy of neutrons
printf("\nThe average number of collsions for thermalization of neutrons = %2d", n);
printf("\nThe number of collsions for half the initial energy of neutrons = %3.1f", n_half);
// Result 
// The average number of collsions for thermalization of neutrons = 88
// The number of collsions for half the initial energy of neutrons = 3.4