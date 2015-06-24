clear;
clc;

// Example - 14.22
// Page number - 491
printf("Example - 14.22 and Page number - 491\n\n");

// Given
T = 60 + 273.15;//[K] - Temperature
R = 8.314;//[J/mol*K] - Universal gas constant

// log(Y1_inf) = log(Y2_inf) = 0.15 + 10/T

// Since the two liquids are slightly dissimilar , we assume the activity coeffiecients to follow van Laar equation 
// From van Laaar equation 
// A = log(Y1_inf) and B = log(Y2_inf) and since it is given that log(Y1_inf) = log(Y2_inf), therefore A = B
//(x_1*x_2)/(G_excess/R*T) = x_1/B + x_2/A = X_1/A + x_2/A = 1/A
// G_excess/(R*T) = A*x_1*x_2

// For equilomar mixture,
x_1 = 0.5;// Mole fraction of component 1
x_2 = 0.5;// Mole fraction of component 2

// Expression for A can be written as
// A = 0.15 + 10/T, where T is in C. Therefore
A = 0.15 + 10/(T - 273.15);
// Differentiating it with respect to temprature we get
dA_dT = - 10/((T-273.15)^(2));

// The excess Gibbs free energy can be calculated as
G_excess = A*x_1*x_2*(R*T);//[J/mol]

// The ideal Gibbs free energy change can  be calculated as
delta_G_id_mix = R*T*(x_1*log(x_1) + x_2*log(x_2));//[J/mol]

// Finally we have,
delta_G_mix = G_excess + delta_G_id_mix;//[J/mol]

printf("The Gibbs free energy change of mixing for equimolar mixture is %f J/mol\n\n",delta_G_mix);


// Now let us determine the excess enthalpy. We know that
// H_excess/(R*T^(2)) = -[d/dT(G_excess/R*T)]_P,x = - x_1*x_2*[d/dT(A)]_P,x
// Therefore at 'T' = 60 C the excess enthalpy is given by
H_excess = -R*(T^(2))*x_1*x_2*dA_dT;//[J/mol]

delta_H_id_mix = 0;//[J/mol] - Enthalpy change of mixing for ideal solution is zero.

//Thus enthalpy change of mixing for an equimolar mixture at 333.15 K is given by
delta_H_mix = delta_H_id_mix + H_excess;//[J/mol]


printf("The enthalpy change of mixing for equimolar mixture is %f J/mol",delta_H_mix);
