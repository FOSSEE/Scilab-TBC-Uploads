

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 6 Example # 6.1 ")

//Inlet temperature in degree C
Tin = 10;
//Outlet temperature in degree C
Tout = 40;
//Diameter in m
D = 0.02;
//Massflow rate in kg/s
m = 0.01;
//Heat flux in W/m2
q = 15000;

//From Table 13 in Appendix 2, the appropriate properties of water at an
//average temperature between inlet and outlet of 25°C are

//Density in kg/m3
rho = 997;
//Specific heat in J/kgK
c = 4180;
//Thermal conductivity in W/mK
k = 0.608;
//Dynamic viscosity in Ns/m2
mu = 0.00091;

disp("Reynolds Number is")
//Reynolds number
Re = (4*m)/((%pi*D)*mu)
disp("Flow is Laminar")

//Since the thermal-boundary condition is one of uniform heat flux, Nu= 4.36 from Eq. (6.31)
//Nusselt number
Nu = 4.36;
disp("Heat transfer coefficient in W/m2K")
//Heat transfer coefficient in W/m2K
hc = (Nu*k)/D

//The length of pipe needed for a 30°C temperature rise is obtained from a heat balance
disp("Length of pipe in m")
//Length of pipe in m
L = ((m*c)*(Tout-Tin))/((%pi*D)*q)

disp("Inner surface temperature at outlet in degree C")
//Inner surface temperature at outlet in degree C
Ts = q/hc+Tout

//The friction factor is found from Eq. (6.18)
disp("Friction factor is")
//Friction factor is
f = 64/Re

//Average velocity in m/s
U = (4*m)/(((rho*%pi)*D)*D);
disp("The pressure drop in the pipe in N/m2")
//The pressure drop in the pipe in N/m2
deltaP = ((((f*L)*rho)*U)*U)/(D*2)

//Efficiency
n = 0.5;
//The pumping power P is obtained from Eq. 6.19
disp("Pumping power in W is")
//Pumping power in W
P = (m*deltaP)/(rho*n)
