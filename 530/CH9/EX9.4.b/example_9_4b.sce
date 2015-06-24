clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 9
// Mass Transfer


// Example 9.4(b)
// Page 356
printf("Example 9.4(b), Page 356 \n \n");

L = 1 ; // [m]
D = 0.005 ; // [m]
Pa1 = 1 ; // [atm]
Pa2 = 0 ; 
R = 8314 ;
T = 298 ; // [K]

// Since the tank is large and the pressure and temperature at the two ends of the same tube are same, we are assuming Equimolal counter diffusion
// From Table 9.1
Dab = 2.80*10^-5 ; // [m^2/s]
// Substituing in eqn 9.4.12
Na = -[Dab/(R*T)*(Pa2-Pa1)*(1.014*10^5)/L]*(%pi*(D/2)^2);

// Since equimolal counter diffusion is taking place
Nb = - Na ;
// therefore rate at which air enters the tank
R_air = abs(Nb)*29 ; // [kg/s]

printf("Rate at which air enters the tank = %e kg/s",R_air);