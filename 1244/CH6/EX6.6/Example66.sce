

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 6 Example # 6.6 ")

//Mass flow rate in kg/s
m = 3;
//Diameter of tube in m
D = 5/100;
//Temperature of fluid in degree K
Tb = 473;
//Temperature of wall in degree K
Ts = 503;

//Density in kg/m3
rho = 7700;
//Specific heat in J/kgK
c = 130;
//Thermal conductivity in W/mK
k = 12;
//Kinematic viscosity in m2/s
nu = 0.00000008;
//Prandtl number
Pr = 0.011;

//The rate of heat transfer per unit temperature rise in W is
q = (m*c)*1;

//Reynolds Number is
Re = (D*m)/(((((rho*%pi)*D)*D)*nu)/4);

//The heat transfer coefficient in W/m2K is obtained from Eq. (6.67)
hc = ((k*0.625)*((Re*Pr)^0.4))/D;

//Surface area in m2
A = q/(hc*(Ts-Tb));

disp("Required length of tube in m is")
//Required length of tube in m
L = A/(%pi*D)
