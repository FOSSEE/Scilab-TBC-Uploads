

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 6 Example # 6.2 ")

//Diameter in m
D = 0.01;
//Wall thickness in m
t = 0.02/100;
//Massflow rate in kg/s
m = 0.05;
//Inlet temperature in degree C
Tin = 35;
//Outlet temperature in degree C
Tout = 45;
//Assuming a constant tube temp. in degree C
T = 100;

//From Table 16 in Appendix 2, we get the following properties for oil at
//40°C

//Density in kg/m3
rho = 876;
//Specific heat in J/kgK
c = 1964;
//Thermal conductivity in W/mK
k = 0.144;
//Dynamic viscosity in Ns/m2
mu = 0.21;
//Prandtl number
Pr = 2870;

//Reynolds Number is
Re = (4*m)/((%pi*D)*mu);

//For laminar flow and constant temperature assumption
//Nusselt number
Nu = 3.66;
//Heat transfer coefficient in W/m2K
hc = (Nu*k)/D;
//Heat transfer rate in W
q = (m*c)*(Tout-Tin);
//LMTD in degree K
LMTD = (T-Tout-(T-Tin))/log((T-Tout)/(T-Tin));

disp("Length of pipe in m is")
//Length of pipe in m
L = q/(((%pi*D)*hc)*LMTD)
