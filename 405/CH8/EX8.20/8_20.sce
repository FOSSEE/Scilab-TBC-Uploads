clear;
clc;
printf("\t\t\tExample Number 8.20\n\n\n");
// solar-environment equilibrium  temperatures 
// Example 8.20 (page no.-454) 
// solution

q_by_A_sun = 700;// [W/m^(2)] solar flux
T_surr = 25+273;// [K] surrounding temperature
sigma = 5.669*10^(-8);// [W/square meter K^(4)]
// at radiation equilibrium the netenergy absorbed from sun must equal the long-wavelength radiation exchange with the surroundings,or
// (q_by_A_sun)*alpha_sun = alpha_low_temp*sigma*(T^4-T_surr^4)         (a)

// case (a) for white paint

// for white paint we obtain from table 8-4
alpha_sun = 0.12;
alpha_low_temp = 0.9;
// so that equation (a) becomes
T = [(q_by_A_sun)*alpha_sun/(alpha_low_temp*sigma)+T_surr^(4)]^(1/4);// [K]
printf("radiation equilibrium temperature for the plate exposed to solar flux if the surface is coated with white paint is %f degree celsius",T-273);

// case (b) for flat black lacquer we obtain

alpha_sun = 0.96;
alpha_low_temp = 0.95;
// so that equation (a) becomes
T = [(q_by_A_sun)*alpha_sun/(alpha_low_temp*sigma)+T_surr^(4)]^(1/4);// [K]
printf("\n\nradiation equilibrium temperature for the plate exposed to solar flux if the surface is coated with flat black lacquer is %f degree celsius",T-273);







