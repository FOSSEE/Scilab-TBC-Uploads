// Scilab code: Ex7.3: Intensity ratio of J states for HCL molecule: Pg: 171 (2008)
e = 1.6e-019;    // Energy equivalent of 1 eV, J/eV
K = 1.38e-23;    // Boltzmann constant, J/K
T = 300;    // Absolute room temperature, K
J1 = 0;    // Rotational quantum number for ground level
J2 = 10;    // Rotational quantum number for 10th level
EJ1 = J1*(J1+1)*1.3e-03;    // Energy of ground level of HCL molecule, eV
EJ2 = J2*(J2+1)*1.3e-03;    // Energy of 10th level of HCL molecule, eV
// As n10/n0 is propotional to (2J+1)*exp(-(EJ2-EJ1))/KT, so
I_ratio = (2*J2+1)/(2*J1+1)*exp(-(EJ2 - EJ1)/(K*T/e));    // Intensity ratio of J10 and J1 states
printf("\nThe intensity ratio of J-states for HCL molecule = %4.2f", I_ratio);
// Result
// The intensity ratio of J-states for HCL molecule = 0.08
