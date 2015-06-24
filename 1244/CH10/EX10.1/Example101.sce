
// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat transfer, Seventh Edition, Frank Kreith, Raj M Manglik and Mark S Bohn, Chapter 10, Example 1")
//Surface temperature of polished stainless steel surface in degree celcius
T_s=106;
//Boiling point of water under at atmospheric pressure in degree celcius
T_b=100;
//Value of empirical constant
C_sf=0.0132;
//latent heat of vaporization in J/kg
h_fg=2.25e6;
//gravitational acceleration in m/s^2
g=9.81;
//Value of proportionality factor in British Gravitational system
g_c=1;
//density of saturated liquid in kg/m^3
rho_l=962;
//density of saturated vapor in kg/m^3
rho_v=0.60;
//specific heat of saturated liquid in J/kg K
c_l=4211;
//prandtl number of saturated liquid
Pr_l=1.75;
//surface tension of the liquid-to-vapor interface in N/m
sigma=58.8e-3;
// viscosity of the liquid in kg/ms
mu_l=2.77e-4;
//Excess temperature in degree Celcius
delta_Tx= T_s-T_b;

disp("Heat flux from the surface to the water in W/m^2")
//Heat flux in W./m2
q=(c_l*delta_Tx/(C_sf*h_fg*Pr_l))^3*mu_l*h_fg*sqrt((g*(rho_l-rho_v))/(g_c*sigma))

disp("Critical heat flux in W/m^2")
//Heat flux in W./m2
q_maxZ=(%pi/24)*sqrt(rho_v)*h_fg*(sigma*g*(rho_l-rho_v)*g_c)^0.25

disp("At 6°C excess temperature the heat flux is less than the critical value; therefore nucleate pool boiling exists")
disp("For the Teflon-coated stainless steel surface, heat flux in W/m^2")
//Heat flux in W./m2
q=29669*(C_sf/0.0058)^3
disp("Thus for Teflon-coated stainless steel surface there is a remarkable increase in heat flux; however, it is still below the critical value.")
