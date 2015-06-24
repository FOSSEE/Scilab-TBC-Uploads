// Scilab Code Ex13.11 Finding voltage from net forward current using Diode Equation: Page-450 (2010)
e = 1.6e-019;    // Charge on an electron, coulomb
k = 1.38e-023;    // Boltzmann constant, J/mol/K
T = 300;    // Room temperature, kelvin
Io = 1;        // Reverse saturation current, micro-ampere, for simplicity assume I0 = 1
Iv = 0.9*Io;    // "Diode Equation" for net forward current, milliamperes
// As Iv = Io*(exp(e*V/(k*T))-1), solving for V
V = log(Iv/Io+1)*k*T/e;    // Potential difference applied across p-n junction, volt
printf("\nThe potential difference applied across p-n junction = %6.4f volt", V);
// Result 
// The potential difference applied across p-n junction = 0.0166 volt 