clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 9
// Mass Transfer


// Example 9.4(a)
// Page 356
printf("Example 9.4(a), Page 356 \n \n");

L = 1 ; // [m]
D = 0.005 ; // [m]
Pa1 = 1 ; // [atm]
Pa2 = 0 ; 
R = 8314 ;
T = 298 ; // [K]

// Assuming Equimolal counter diffusion
// From Table 9.1
Dab = 2.80*10^-5 ; // [m^2/s]
// Substituing in eqn 9.4.12
Na = -[Dab/(R*T)*(Pa2-Pa1)*(1.014*10^5)/L]*(%pi*(D/2)^2);
R_NH3 = Na*17 ; // [kg/s]

printf("Na = -Nb = %e (kg mole)/m^2 s\n",Na);
printf("Rate at which ammonia is lost through the tube = %e kg/s \n",R_NH3);