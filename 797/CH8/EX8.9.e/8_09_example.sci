//Example 8-09 Effect of Flushing on Flow a Rate from a Shower
D = 1.5 //diameter of copper pipe in building [cm]
P_1 = 200 //Gauge pressure at the inlet of system [kPa]
g = 9.81 //gravitational acceleration [m/s^2]
rho = 998 //density of wter at 20C [kg/m^3]
mu = 1.002 * 10**-3 //dynamic viscosity of water [kg/m.s]
epsilon = 1.5 * 10**-6 //roughness of copper pipes
L = 11 //length of pipe in shower line [m]
K_Ltee = 0.9 //loss coefficient for tee
K_Lelbow = 0.9 //loss coefficient for each elbow
K_Lglobe = 10 //loss coefficient for globe valve
K_Lshower = 12 //loss coefficient for shower head
K_Lvalve_toilet = 2
K_Lelbow_toilet = 14
K_Lfloat = 10
z = 2 //elevation of shower head from pipe [m]