// Scilab Code Ex5.2 Vacancy formation in copper Page-159 (2010)
E = 1;    // Energy of formation of vacancy in copper, electron-volt
T = 1356;    // Melting point of copper, K
k = 8.614D-5;    // Boltzmann constant, electron-volt
N = 6.023D23;    // Avogadro's number
// Now fraction of vacancies = f_vacancy = n/N = exp(-E/(k*T)
f = exp(-E/(k*T));    // Fraction of vacancies in the solid at 300 K
n = N*f;  // Number of vacancy per mole
delta_d = n + N;    // Change in the density due to creation of vacancy
f_d = delta_d/N;    // Relative change in the density of copper due to vacancy formation
printf("\nThe relative change in the density of copper due to vacancy formation (n+N)/N, is : %9.7f : 1", f_d);
//Result
// The relative change in the density of copper due to vacancy formation (n+N)/N, is : 1.0001914 : 1