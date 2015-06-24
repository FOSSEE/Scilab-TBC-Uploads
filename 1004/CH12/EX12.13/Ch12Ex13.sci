// Scilab Code Ex12.13 Uranium atom undergoing fission in a reactor: Pg: 250 (2008)
P_out = 800e+06;    // Output power of the reactor, J/s
E1 = P_out*24*60*60;    // Energy required one day, J
eta = 0.25;    // Efiiciency of reactor
N=poly(0,"N");    // Declare N as the variable
E2 = N*200e+06*1.6e-019*eta;    // Useful energy produced by N atoms in a day, J
N=roots(E2-E1);        // Number of U-235 atoms consumed in one day
m = N*235/6.023e+026;    // Mass of uranium consumption in one day, kg
printf("\nThe number of U-235 atoms consumed in one day = %4.2e atoms", N);
printf("\nThe mass of uranium consumption in one day = %4.2f kg", m);

// Result
// The number of U-235 atoms consumed in one day = 8.64e+024 atoms
// The mass of uranium consumption in one day = 3.37 kg 