// Scilab Code Ex7.6: Isotope Effect in mercury: Page-153 (2010)
M1 = 199;    // Mass of an isotope of mercury, amu
T_C1 = 4.185;    // Transition temperature of the isoptope of Hg, K
T_C2 = 4.153;    // Transition temperature of another isoptope of Hg, K
alpha = 0.5;    // Isotope coefficient
M2 = M1*(T_C1/T_C2)^(1/alpha);    // Mass of another isotope of mercury, amu
printf("\nThe mass of another isotope of mercury at %5.3f K = %6.2f amu",T_C2, M2);

// Result
// The mass of another isotope of mercury at 4.153 K = 202.08 amu 