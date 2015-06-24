clear;
clc;

// Example: 9.6
// Page: 341
printf("Example - 9.6 and Page number - 341\n\n");

//Given
T = 25+273.15;// [K]
P = 1;// [atm]
// Component 1 = water
// Component 2 = methanol
a = -3.2;// [cubic cm/mol]  A constant
V2 = 40.7;// [cubic cm/mol]  Molar volume of pure component 2 (methanol)
// V1_bar = 18.1 + a*x_2^(2)

// From Gibbs-Duhem equation at constant temperature and pressure we have
// x_1*dV1_bar + x_2*dV2_bar = 0
// dV2_bar = -(x_1/x_2)*dV1_bar = -(x_1/x_2)*a*2*x_2*dx_2 = -2*a*x_1*dx_2 = 2*a*x_1*dx_1

// At x_1 = 0: x_2 = 1 and thus V2_bar = V2
// Integrating the above equation from x_1 = 0 to x_1 in the RHS, and from V2_bar = V2 to V2 in the LHS, we get
// V2_bar = V2 + a*x_1^(2) -  Molar volume of component 2(methanol) in the mixture 

printf("The expression for the partial molar volume of methanol(2) is\nV2_bar = V2 + a*x_1^(2) [cubic cm/mol]\n\n");

// At infinite dilution, x_2 approach 0 and thus x_1 approach 1, therefore
x_1 = 1;// Mole fraction of component 1(water) at infinite dilution
V2_bar_infinite = V2 + a*(x_1^(2));//[cubic cm/mol]

printf("The partial molar volume of methanol at infinite dilution is %.1f cubic cm/mol",V2_bar_infinite);