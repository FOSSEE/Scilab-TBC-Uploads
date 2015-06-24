clear;
clc;

// Illustration 8.6
// Page: 487

printf('Illustration 8.6 -  Page: 487\n\n');

// a - toluene    b - air
//*****Data*****
T_G1 = 333; // [K]
P_total = 101.325; // [kPa]
Y_1 = 0.05; // [kg vapor/kg dry air]
//*****//

C_pa = 1.256; // [kJ/kg.K]
C_pb = 1.005; // [kJ/kg.K]

C_s1 = C_pb + Y_1*C_pa

T_1 = 383.8; // [K]
T_c = 591.8; // [K]
M_a = 92; // [gram/mole]
M_b = 28.97; // [gram/mole]
lambda_1 = 33.18*1000/92; // [Latent heat of vaporization at T_1, kJ/kg]

// Constants of antoine equation
A = 13.9320;
B = 3057; // [K]
C = -55.52; // [K]

printf('Illustration 8.6 (a)\n');

// Solution (a)

// Using equation 8.10
//   T_as = T_G1 - (Y_as - Y_l)*lambda_as/C_s1
//   where lambda_2 = lambda_1*((1-T_as/T_c)/(1-T_1/T_c))^.38
//   Y_as = P_a/(P_total-P_a)*M_a/M_b
//   P_a = exp(A-B/(T+c))

deff('[y] = f12(T_as)',' y = T_as - T_G1 + ((exp(13.9320 - (3057/(T_as - 55.52)))/(P_total - (exp(13.9320 - (3057/(T_as - 55.52))))))*(M_a/M_b) - Y_1)*(lambda_1*((1-T_as/T_c)/(1-T_1/T_c))^.38/C_s1)');
T_as = fsolve(273,f12); // [K]     
printf("Adiabatic Saturation Temperature is %f K\n",T_as);

// Now using equation 8.2
 
P_a = exp(13.9320-(3057/(T_as-55.52))); // [kPa]
Y_as = P_a/(P_total-P_a)*M_a/M_b; // [kg vapor/kg dry air]

printf("Absolute humidity is %f kg vapor/kg dry air\n\n",Y_as);

printf('Illustration 8.6 (b)\n');

// Solution (b)

// Thermodynamic properties of mixture of toluene and air
row = 1.06; // [kg/cubic m]
u = 19.5*10^-6; // [P]
Pr = 0.7;
Dab = 0.1; //[From Wilke-Lee equation, square cm/s]
Sc = u/(row*Dab*10^-4);

// Using equation 8.16

A_1 = C_s1*(Sc/Pr)^0.567; // [kJ/kg.K]
// here A_1 = hg/ky, psychrometric ratio

// Using equation 8.15
//    T_w = T_G1 - (Y_w-Y_1)*lambda_w/(hg/ky)
//   where lambda_w = lambda_1*((1-T_w/T_c)/(1-T_1/T_c))^.38
//   Y_w = P_a/(P_total-P_a)*M_a/M_b
//   P_a = exp(A-B/(T+c))

deff('[z] = f15(T_w)',' z = T_w - T_G1 + ((exp(13.9320 - (3057/(T_w - 55.52)))/(P_total - (exp(13.9320 - (3057/(T_w - 55.52))))))*(M_a/M_b) - Y_1)*(lambda_1*((1-T_w/T_c)/(1-T_1/T_c))^.38/A_1)');
T_w = fsolve(273,f15); // [K]
printf("Wet bulb Temperature is %f K\n",T_w);

// Now using equation 8.2
 
P_a = exp(13.9320-(3057/(T_w-55.52))); // [kPa]
Y_w = P_a/(P_total-P_a)*M_a/M_b; // [kg vapor/kg dry air]

printf("Absolute humidity is %f kg vapor/kg dry air\n",Y_w);
