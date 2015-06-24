// Scilab code Exa3.1 : : Page-123 (2011)
clc; clear;
E = 9;    // Energy of the alpha particle, MeV
S = 1700; //  Stopping power of Al
D = 2700; // Density of Al, Kg per cubic metre
R_air = 0.00318*E^(3/2); // Range of an alpha particle in air,metre
R_Al =  R_air/S; // Range of an alpha particle in Al, metre
T = D*1/S; // Thickness in Al of 1m air, Kg per square metre
printf("\nThe range of an alpha particle = %4.2e metre \nThe thickness in Al of 1 m air = %4.2f Kg per square metre", R_Al, T);

// Result
// The range of an alpha particle = 5.05e-05 metre 
// The thickness in Al of 1 m air = 1.59 Kg per square metre 
