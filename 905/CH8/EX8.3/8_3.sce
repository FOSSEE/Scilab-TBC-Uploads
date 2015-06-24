clear;
clc;

// Illustration 8.2
// Page: 482

printf('Illustration 8.3 -  Page: 482\n\n');

// solution
// A - water vapor   B - air
//*****Data*****
T = 328; // [dry bulb temperature, K]
P_total = 1; // [atm]
H = 30; // [relative humidity, %]
//*****//
P_vapA = 15.73; // [vapor pressure of water, kPa]
P_total = P_total*101.325; // [kPa]
M_A = 18; // [gram/mole]
M_B = 29; // [gram/mole]

P_A = (H/100)*P_vapA;// [partial pressure of A,kPa]

printf('Illustration 8.3 (a)\n\n');
// At dew point partial pressure is equal to vapor pressure
// Using Antonnie equation we can find dew point temperature

printf("Dew point temperature is 304.5 K\n")

// From equation 8.1
Y_s = P_A/(P_total-P_A)*(M_A/M_B);
printf("Absolute humidity of air-water mixture at 328 K is %f kg H2O/kg dry air\n\n",Y_s);

printf('Illustration 8.3 (b)\n\n');

//soluton (b)
T_ref = 273; // [K]
C_A = 1.884; // [kJ/kg.K]
C_B = 1.005; // [kJ/kg.K]
lambda = 2502.3; // [Latent heat of Vaporization at 273 K, kJ/kg]

// From equation 8.3
H_s = C_B*(T-T_ref) + Y_s*(C_A*(T-T_ref) + lambda);

printf("Enthalpy per unit mass of dry air of a saturated mixture relative to 273 K is %f kJ/kg dry air\n",H_s);