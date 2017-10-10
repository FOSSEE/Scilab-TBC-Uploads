//Example 8-05 Determining the Flow Rate of Air in a Duct
L = 300 //length of pipe[m]
D = 0.267 //diameter of pipe[m]
h_L = 20 //maximum head loss in pipe [m]
//Properties of air at 35C
rho = 1.145 //density [kg / m^3]
mu = 1.895 * 10**-5 //dynamic viscosity [kg / m.s]
nu = 1.655 * 10**-5 //kinematic viscosity [m^2 / s] 
g = 9.81 //gravitational acceleration [m / s^2]
Vdot_old = 0.35 //older flow rate of water [m^3/s]