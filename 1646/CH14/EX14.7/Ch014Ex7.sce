// Scilab code Ex14.7 : Pg:722(2011)
clc;clear;
e = 1.6e-019;   // Charge on an electron, C
T = 300;    // Room temperature, K
J0 = 300e-03;   // Saturation current density of the pn junction diode, A/metre square
J = 1e+05;  // Forward current density of pn junction diode, A/metre square
k_B = 1.38e-023;    // Boltzmann constant, J/K
eta = 2;    // Ideality factor for Ge diode
// As J = J0*exp(e*V/(eta*k_B*T)), solving for V
V = eta*k_B*T/e*log(J/J0);   // Voltage required to cause a forward current density in pn junction diode, volt
printf("\nThe voltage required to cause a forward current density in Si iode = %5.3f V", V);

// Result
// The voltage required to cause a forward current density in Si diode = 0.658 V 
