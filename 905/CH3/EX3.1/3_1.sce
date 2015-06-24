clear;
clc;

// Illustration 3.1
// Page: 161

printf('Illustration 3.1 -  Page: 161\n\n');

// solution

//*****Data*****//
// a-benzene   b-toluene
T = 300; // [K]
x_a = 0.4; // [mole fraction in liquid phase]
// Antoine constants for benzene and toluene are given
// For benzene
A_a = 15.9008;
B_a = 2788.51;
C_a = -52.36;
// For toluene
A_b = 16.0137;
B_b = 3096.52;
C_b = -53.67;
//*****//

// Using equation 3.5 vapor pressure of component 'a' and 'b'
P_a = exp(A_a-(B_a/(T+C_a))); // [mm of Hg]
P_b = exp(A_b-(B_b/(T+C_b))); // [mm of Hg]

P_a = P_a*101.3/760; // [kPa]
P_b = P_b*101.3/760; // [kPa]
// Partial pressure of component 'a' and 'b'
p_a = x_a*P_a; // [kPa]
p_b = (1-x_a)*P_b; // [kPa]
P_total = p_a+p_b; // [kPa]

printf("The total equilibrium pressure of the binary system of benzene and toluene is %f kPa\n\n",P_total);

y_a = p_a/P_total; // [mole fraction in vapor phase]
printf("The composition of the vapor in equilibrium is %f\n\n",y_a); 