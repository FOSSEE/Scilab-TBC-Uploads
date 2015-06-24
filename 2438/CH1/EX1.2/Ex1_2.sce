
//==============================================================================
// chapter 1 example 2
clc;
clear;

//input data
h1       = 1;            // miller indice
k1       = 1;            // miller indice
l1       = 1;            // miller indice
h0       = 0;            // miller indice
k0       = 0;            // miller indice
l0       = 0;            // miller indice
p       = 1980;             // Density of KCl in kg/m^3
N       = 6.023*10^26;      // Avagadros number in atoms/kilomole
M       = 74.5;             // molecular weight of KCl
n       = 4;                // No. of atoms per unit cell for FCC

// calculations
a       = ((n*M)/(N*p))^(1/3);

// dhkl    = a/sqrt((h^2)+(k^2)+(l^2)); // interplanar distance
d100     = a/sqrt((h1^2)+(k0^2)+(l0^2)); // interplanar distance
d110     = a/sqrt((h1^2)+(k1^2)+(l0^2)); // interplanar distance
d111     = a/sqrt((h1^2)+(k1^2)+(l1^2)); // interplanar distance

// Output
mprintf('d100 = %3.2f Å\n d110 = %3.2f Å\n d111 = %3.2f Å',d100*10^10,d110*10^10,d111*10^10);

//==============================================================================


