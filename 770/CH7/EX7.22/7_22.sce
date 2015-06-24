clear;
clc;

//Example - 7.22
//Page number - 256
printf("Example - 7.22 and Page number - 256\n\n");

// Given
T = 100 + 273.15;//[K]
P = 10;//[MPa]

// The volume expansivity is defined as 
// Beta = (1/V)*(del V/del T)_P = (1/V)*(dV/dT)_P
// From compressed liquid water tables at 100 C and 10 MPa,
V = 0.0010385;//[m(3)/kg]
Beta = (1/V)*((0.0010549 - 0.0010245)/(120 - 80));//[K^(-1)] // The values are obtained from the steam table as reported in the book.

printf("The value of volume expansivity is  Beta = %e K^(-1)\n",Beta);

//Isothermal compressibility is defined as
// K_t = -(1/V)*(del V/del T)_T = -(1/V)*(dV/dT)_T
K_t = -(1/V)*((0.0010361 - 0.0010410)/(15 - 5));//[MPa^(-1)]  // The values are obtained from the steam table as reported in the book.

K_t = K_t*10^(-3);//[kPa]

printf("The value of isothermal compressibility is  K_t = %e kPa^(-1)\n",K_t);

// Cp - Cv = (T*V*(Beta^(2)))/K_t
R = (T*V*(Beta^(2)))/K_t;//[kJ/kg-K]

printf("The value of the difference between Cp and Cv is  Cp-Cv = %f kJ/kg-K",R);

