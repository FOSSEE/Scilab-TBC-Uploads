
// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat transfer, Seventh Edition, Frank Kreith, Raj M Manglik and Mark S Bohn, Chapter 10, Example 6")
//Length of Heat pipe in meters
L_eff=0.30;
//Temperature of the heat pipe in degree celcius
T=100;
//Diameter of the heat pipe in meters
D=1e-2;
//Density of water at 100 degree celcius in k/m^3
rho=958;
//Viscosity of water in N s/m^2
mu=279e-6;
//surface tension of the liquid-to-vapor interface in N/m
sigma=58.9e-3;
//latent heat of vaporization in J/kg
h_fg=2.26e6;
//Inclination angle in degree
theta=30;
//Acceleration due to gravity in meter/sec^2
g=9.81;
//Wire diameter for wick in metres
d=0.0045e-2;
//So thickness of four layers of wire mesh
t=4*d;
//Area of the wick in m^2
Aw=%pi*D*t;
//For phosphorus-bronze,heat pipe wick pore size in meters
r=0.002e-2;
//For phosphorus-bronze,heat pipe wick permeability in m^2
K=0.3e-10;
disp("Maximum liquid flow rate in kg/sec")
//flow rate in kg/sec
m_max=((2*sigma/r)-rho*g*L_eff*sind(theta))*((rho*Aw*K)/(mu*L_eff))
disp("Maximum heat transport capability in Watt")
//heat transport capability in W
q_max=m_max*h_fg
