clear;
clc;

// Illustration 8.2
// Page: 480

printf('Illustration 8.2 -  Page: 480\n\n');

// solution
// A - water vapor    B - air
// REference state is air

// ****Data****//  
T_ref = 273; // [Reference temperature, K]
T = 303; // [K]
P_total = 1; // [atm]
P_A = 4.24; // [Vapor pressure of water at 303K, kPa]
M_A = 18; // [gram/mole]
M_B = 29; // [gram/mole]
C_A = 1.884; // [kJ/kg.K]
C_B = 1.005; // [kJ/kg.K]
lambda = 2502.3; // [Latent heat of Vaporization at 273K, kJ/kg]
//*****//

P_total = P_total*101.325; // [kPa]

// From equation 8.2
Y_s = P_A/(P_total - P_A)*(M_A/M_B); //[kg H2O/ kg dry air]
printf("Absolute humidity of mixture of water vapor and air is %f kg H2O/kg dry air\n\n",Y_s);

// From equation 8.3
H_s = C_B*(T-T_ref) + Y_s*(C_A*(T-T_ref) + lambda); // [kJ/kg dry air]

printf("Enthalpy per unit mass of dry air of a saturated mixture at 303 K and 1 atm is %f kJ/kg dry air\n",H_s);