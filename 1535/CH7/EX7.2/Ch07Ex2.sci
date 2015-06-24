// Scilab Code Ex7.2 : Frequency of Josephson current : Page-152 (2010)
V = 1e-06;    // DC voltage applied across the Josephson junction, volt
e = 1.6e-019;    // Charge on an electron, C
h = 6.626e-034;    // Planck's constant, Js
f = 2*e*V/h;    // Frequency of Josephson current, Hz
printf("\nThe frequency of Josephson current = %5.1f MHz", f/1e+06);

// Result 
// The frequency of Josephson current = 482.9 MHz 