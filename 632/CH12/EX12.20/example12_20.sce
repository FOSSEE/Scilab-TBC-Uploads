//clc()
N = 1;//kmol hydrogen burned
No = N/2;
Nosupplied = 2 * No;
Nair = Nosupplied * 100 / 21;
Nn2 = Nair - Nosupplied;
//Reactants, H2 = 1kmol, Air = 4.762 kmol
//Product, Water vapour = 1kmol, Oxygen = 0.5kmol, N2 = 3.762kmol
//Cp(water) = 30.475 + (9.652*10^-3)*T + 1.189 * 10^-6 * T^2
//Cp(nitrogen) = 27.034 + 5.815 * 10^-3 *T - 0.2889 * 10^-6 * T^2
//Cp(oxygen) = 25.611 + 13.260 * 10^-3 * T - 4.2077 * 10^-6 * T^2
//H2 = integration(298 to T of (1 * Cp(water) + 0.5 * Cp(oxygen) + 3.762 * Cp(nitrogen)))
//therefore, H2 = 140.34 * T + 31.222 * 10^-3 * T^2 - 4.928 * 10^-6 * T^2 - 44463.54 kJ
H298 = -241.826 * 10^3;//kJ
//H2 = -H1 - H298
//H1 = 0
//therefore using equation H2, the value of T is obtained to be
T = 1609.8;//K
disp("K",T,"Temperature of the reaction products = ")