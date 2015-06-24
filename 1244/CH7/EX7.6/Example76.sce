

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 7 Example # 7.6 ")

//Temperature of methane in degree C
T = 20;
//Outer dia of tube in m
D = 4/100;
//Longitudinal spacing in m
SL = 6/100;
//Transverse spacing in m
ST = 8/100;
//Wall temperature in degree C
Tw = 50;
//Methane flow velocity in m/s
v = 10;

//For methane at 20°C, Table 36, Appendix 2 gives

//Density in kg/m3
rho = 0.668;
//Thermal conductivity in W/mK
k = 0.0332;
//Kinematic viscosity in m2/s
nu = 0.00001627;
//Prandtl number
Pr = 0.73;

//From the geometry of the tube bundle, we see that the minimum flow
//area is between adjacent tubes in a row and that this area is half
//the frontal area of the tube bundle. Thus,
//Velocity in m/s
Umax = 2*v;

//Reynolds number
Re = (Umax*D)/nu;

//Since ST/SL<2, we use Eq. (7.30)

//Nusselt number
Nu = ((0.35*((ST/SL)^0.2))*(Re^0.6))*(Pr^0.36);

//Heat transfer coefficient in W/m2K
h = (Nu*k)/D;

//Since there are fewer than 10 rows, the correlation factor in Table 7.3 gives
disp("Heat transfer coefficient in W/m2K")
//Heat transfer coefficient in W/m2K
h = 0.92*h

//Tube-bundle pressure drop is given by Eq. (7.37). The insert in Fig. (7.26) gives the correction factor x.

disp("Corresponding pressure drop in N/m2")
//Corresponding pressure drop in N/m2
P = ((((5*0.25)*rho)*Umax)*Umax)/2
