clear;
clc;

// Illustration 8.4
// Page: 484

printf('Illustration 8.4 -  Page: 484\n\n');

// Solution
// a - water vapor    b - air
//*****Data*****
T_G1 = 356; // [K]
P_total = 101.325; // [kPa]
Y_1 = .03; // [kg water/kg dry air]
//*****//

C_pa = 1.884; // [kJ/kg.K]
C_pb = 1.005; // [kJ/kg.K]

C_s1 = C_pb + Y_1*C_pa;// [kJ/kg.K]

T_1 = 373.15; // [K]
T_c = 647.1; // [K]
M_a = 18.02; // [gram/mole]
M_b = 28.97; // [gram/mole]
lambda_1 = 2256; // [Latent Heat of Vaporizarion at T_1, kJ/kg]

// Using equation 8.10
// T_as = T_G1- (Y_as - Y_l)*lambda_as/C_s1
// where lambda_2 = lambda_1*((1-T_as/T_c)/(1-T_1/T_c))^.38
//       Y_as = P_a/(P_total-P_a)*M_a/M_b
//       and P_a = exp(16.3872-(3885.7/(T_as-42.98))) - Antoine equation for component 'a'

deff('[y] = f12(T_as)',' y = T_as - T_G1 + ((exp(16.3872 - (3885.7/(T_as - 42.98)))/(P_total - (exp(16.3872 - (3885.7/(T_as - 42.98))))))*(M_a/M_b) - Y_1)*(lambda_1*((1-T_as/T_c)/(1-T_1/T_c))^.38/C_s1)');
T_as = fsolve(310,f12); // [K]
printf("Adiabatic Saturation Temperature is %f K\n",T_as);

// Now using equation 8.2
 
P_a = exp(16.3872-(3885.7/(T_as-42.98))); // [kPa]
Y_as = P_a/(P_total-P_a)*M_a/M_b; // [kg water/kg dry air]

printf("Absolute humidity is %f kg water/kg dry air\n",Y_as);