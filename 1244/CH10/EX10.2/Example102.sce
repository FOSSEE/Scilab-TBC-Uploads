
// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat transfer, Seventh Edition, Frank Kreith, Raj M Manglik and Mark S Bohn, Chapter 10, Example 2")
//density of saturated liquid in kg/m^3
rho_l=962;
//gravitational acceleration in m/s^2
g=9.8;
//latent heat of vaporization in J/kg
h_fg=2250000;
//density of saturated vapor in kg/m^3
rho_v=0.60;
//Surface temperature of polished stainless steel surface in degree celcius
T_s=400;
//Value of proportionality factor in British Gravitational system
g_c=1;
//Boiling point of water under at atmospheric pressure in degree celcius
T_b=100;
//surface tension of the liquid-to-vapor interface in N/m
sigma=58.8e-3;
//Excess temperature in degree Celcius
delta_Tx= T_s-T_b;
//Wavelength in m from eq. 10.7
lamda=2*%pi*sqrt(g_c*sigma/(g*(rho_l-rho_v)));
//Thermal conductivity in W/mK
k_c=0.0249;
//Absolute viscosity in Ns/m^2
mu_c=12.1e-6;
//Specific heat in J/kg K
c_pc=2034;
//Heat transfer coefficient due to conduction alone in W/m^2 K
h_c=(0.59)*(((g*(rho_l-rho_v)*rho_v*(k_c^3)*(h_fg+(0.68*c_pc*delta_Tx)))/(lamda*mu_c*delta_Tx))^0.25); // expression obtained assuming diameter D tending to infinity
//Emissivity
epsilon_s= 0.05; //since surface is polished and hence heat transfer coefficient due to radiation is negligible
disp("Heat flux in W/m^2")
//Heat flux in W/m^2
q= h_c*delta_Tx
