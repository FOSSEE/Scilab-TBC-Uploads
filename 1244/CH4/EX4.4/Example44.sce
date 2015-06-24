

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 4 Example # 4.4 ")

// Length of the crankcase in m is given as
L = 0.6;
// Width of the crankcase in m is given as
b = 0.2;
// Depth of the crankcase in m is given as
d = 0.1;
// Surface temperature in K is given as
Ts = 350;
// Air temperature in K is given as
Tinfinity = 276;
// Air velocity in m/sec is given as
Uinfinity = 30;
// It is stated that  boundary layer is turbulent over the entire surface

//Average air temperature in degree K is
T = (Ts+Tinfinity)/2;
// At this average temperature, we get the following for air
rho = 1.092;//density in kg/m^3
mu = 0.000019123;//viscosity in SI units
Pr = 0.71;//Prandtl number
k = 0.0265;//Thermal conductivity in W/m-K

// Reynold''s number is therefore given as
ReL = ((rho*Uinfinity)*L)/mu;

//From eq. 4.82, average nusselt number could be given as
Nu = (0.036*(Pr^(1/3)))*(ReL^0.8);

//We can write from the basic expression, Nu=hc*L/k, that
//Heat transfer coefficient in W/m^2-K
hc = (Nu*k)/L;

// The surface area that dissipates heat is 0.28 m2
disp("Total heat loss from the surface in W is therefore")
//Heat loss from the surface in W
q = (hc*0.28)*(Ts-Tinfinity)
