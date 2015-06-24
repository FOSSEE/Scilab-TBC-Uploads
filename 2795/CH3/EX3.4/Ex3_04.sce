// Scilab Code Ex3.4: Page-98 (2013)
clc; clear
T = 1600 + 273;    // Temperature of the furnace, K
b = 2.898e-003;    // Wein's constant, m-K
lambda_max = ceil(b/(T*1e-009));    // Maximum wavelength from Wein's Displacement Law, nm
printf("\nThe maximum wavelength emitted from the heated furnace = %4d nm", lambda_max); 
printf("\nThis wavelength falls in the IR-region.");

// Result
// The maximum wavelength emitted from the heated furnace = 1548 nm
// This wavelength falls in the IR-region. 