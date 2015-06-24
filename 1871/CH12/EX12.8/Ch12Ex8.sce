// Scilab code Ex12.8: Pg:477 (2008)
clc;clear;
c = 3e+008;    // Speed of light, m/s
n1 = 1.5;    // Core index of an optical fibre
n2 = 1.498;    // Cladding index of an optical fibre
l = 18;    // Length of an optical fibre, km
D = (n1-n2)/n1;    // Intermodal dispersion factor for the fibre
// For a 1 km length fibre
delta = n1*1000/c*D/(1-D)*1e+009;    // intermodal dispersion factor for 1 km length fibre, ns/km
delta_t_total = delta*l;    // Total dispersion in 18 km length, ns
B_max = 1/(5*delta_t_total*1e-009);    // Maximum bit rate, bits/sec
printf("\nThe intermodal dispersion factor for 1 km length fibre = %4.2f ns/km", delta );
printf("\nThe total dispersion in 18 km length fibre = %5.1f ns", delta_t_total);
printf("\nThe maximum bit rate allowed asuuming dispersion limiting = %4.2f M bits/s",B_max/1e+006);

// Result
// The intermodal dispersion factor for 1 km length fibre = 6.68 ns/km
// The total dispersion in 18 km length fibre = 120.2 ns
// The maximum bit rate allowed asuuming dispersion limiting = 1.66 M bits/s  