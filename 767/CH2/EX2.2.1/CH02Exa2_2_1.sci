// Scilab code Exa2.2.1 To calculate the binding energy of Ca(20,40) and %_age discrepancy : Page 66 (2011)
// For Ca(20,40), actual binding energy is ...... 
m_p = 1.007825; // Mass of proton, amu
m_n = 1.008665; // Mass of neutron, amu
Z = 20; // Number of protons
N = 20;  // Number of neutrons
M_n = 39.962591; // Mass of the nucleus, amu
B_actual = (M_n-Z*m_p-N*m_n)*931.49; // Actual binding energy, MeV
// For Ca(20,40), Binding energ as per semiemperical mas formula......
Z = 20; // Number of protons
a_v = 15.5; // Volume constant, MeV
a_s = 16.8; // Surface constant, MeV
a_a = 23.0; // Asymmetric constant, MeV
a_c = 0.7; // Coulomb constant, MeV
a_p = 34.0; // Paring constant, MeV
A = 40; // Mass number
B_semi = [a_v*A-(a_s*A^(2/3))-(a_c*Z*(Z-1)/A^(1/3))-(a_a*(A-2*Z)^2/A)-(a_p*A^(-3/4))]; // Binding energy as per semiemperical mass formula
// Percentage discrepancy between actual and semiemperical mass formula values are.......
Per_des = -(B_semi+B_actual)/B_actual*100; // Percentage discrepancy 
printf("\nActual binding energy = %6.2f MeV\nBinding energy as per semiemperical mass formula = %6.2f MeV\nPercentage discrepancy = %3.1f percent", B_actual, B_semi, Per_des);

// Result
// Actual binding energy = -342.05 MeV
// Binding energy as per semiemperical mass formula = 343.59 MeV
// Percentage discrepancy = 0.4 percent