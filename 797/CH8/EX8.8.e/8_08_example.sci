//Example 8-8 Gravity-Driven Water Flow in a Pipe
T = 10 //temperature of water [degree C]
D = 5 //diameter of pipe [cm]
rho = 999.7 //density of water at 10 C [kg/m^3]
mu = 1.307 * 10**-3 //dynamic viscosity of water at 10C [kg/m.s]
epsilon = 0.00026 //roughness of cast iron pipe [m]
Vdot = 6 //flow rate required [L/s]
L = 89 //amount of piping [m]
K_Lentrance = 0.5 //loss coefficient for sharp edged entrance
K_Lelbow = 0.3 //loss coefficients for standard flanged elbows
K_Lvalve = 0.2 //loss coefficient for gate valve
K_Lexit = 1.06 //loss coefficient at submerged exit
g = 9.81 //gravitational acceleration [m/s^2]
z2 = 4 //elevation of waterlel in tank 2