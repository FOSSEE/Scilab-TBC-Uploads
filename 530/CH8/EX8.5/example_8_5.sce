clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 8
// Condensation and Boiling


// Example 8.5
// Page 337
printf("Example 8.5, Page 337 \n \n");

D = 0.02 ; // [m]
l = 0.15 ; // [m]
T = 500+273 ; // [K]
Tc = -196+273 ; // [K]
e = 0.4;
s = 5.670*10^-8;
// Film boiling will occur, hence eqn 8.7.9 is applicable
Tm = (T+Tc)/2;

// Properties
k = 0.0349 ; // [W/m K]
rho = 0.80 ; // [kg/m^3]
u = 23*10^-6 ; // [kg/m s]

Cp_avg = 1.048 ; // [kJ/kg J]
rho_liq = 800 ; // [kg/m^3]
latent = 201*10^3 ; // [J/kg]

lambda = [latent + Cp_avg*(Tm-Tc)*1000]; // [J/kg]
h_c = 0.62*[((k^3)*rho*799.2*9.81*lambda)/(D*u*(T-Tc))]^(1/4); // [W/m^2 K]

// Taking the emissivity of liquid surface to be unity and using equation 3.9.1, the exchange of radiant heat flux
flux = s*(T^4-Tc^4)/(1/e+1/1-1); // [W/m^2]
h_r = flux/(T-Tc);

// Since h_r < h_c, total heat transfer coefficient is determined from eqn 8.7.11
h = h_c+3/4*h_r; // [W/m^2 K]

flux_i = h*(T-Tc);
Rate = flux_i*%pi*D*l; // [W]

printf("Initial heat flux = %f W/m^2 \n",flux_i);
printf("Initial heat transfer rate = %f W",Rate);