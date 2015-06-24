

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 6 Example # 6.3 ")

//Bulk temperature in degree K
T = 293;
//Side of square duct in m
b = 0.1;
//Length of square duct in m
L = 5;
//Wall temperature in degree K
Tw = 300;
//Velocity in m/s
U = 0.03;

//Hydraulic diameter in m
D = 4*((b*b)/(4*b));

//Physical properties at 293 K from Table 19 in Appendix 2 are

//Density in kg/m3
rho = 810;
//Specific heat in J/kgK
c = 2366;
//Thermal conductivity in W/mK
k = 0.167;
//Dynamic viscosity in Ns/m2
mu = 0.00295;
//Prandtl number
Pr = 50.8;

//Reynolds Number is
Re = ((U*D)*rho)/mu;

//Hence, the flow is laminar. Assuming fully developed flow, we get the
//Nusselt number for a uniform wall temperature from Table 6.1

Nu = 2.98;
//Heat transfer coefficient in W/m2K
hc = (Nu*k)/D;

//Similarly, from Table 6.1, the product Re*f=56.91

disp("Friction factor is")
//Friction factor
f = 56.91/Re
