
// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat transfer, Seventh Edition, Frank Kreith, Raj M Manglik and Mark S Bohn, Chapter 10, Example 5")
//Acceleration due to gravity in m/s^2
g=9.81;
//Length of the tube in meters
L=1.5;
//Temperature of saturated vapour in Kelvin
T_sv=349;
//Average tube wall temperature in Kelvin
T_s=325;
//Average temperature of the condensate film in Kelvin
Tf=(T_sv+T_s)/2;
//Thermal conductivity of liquid in W/m-K
k_l=0.661;
//Viscosity of liquid in N s/m^2
mu_l=4.48e-4;
//Dendity of liquid in kg/m^3
rho_l=980.9;
//Specific heat of liquid in J/kg K
c_pl=4184;
//Latent heat of condensation in J/kg
h_fg=2.349e6;
//Density of vapor in kg/m^3
rho_v=0.25;
//Modified latent heat of condensation in J/kg
h_fg_dash=h_fg+(3/8)*c_pl*(T_sv-T_s);

disp("Reynolds number at the lower edge")
//Reynolds number
Re=(4/3)*(((4*k_l*L*(T_sv-T_s)*rho_l^(2/3)*g^(1/3))/(mu_l^(5/3)*h_fg_dash))^0.75)
disp("Since the Reynolds number at the lower edge of the tube is below 2000, the flow of the condensate is laminar")
