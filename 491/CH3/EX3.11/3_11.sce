t = 480 ; // Torque of constant intensity
L = 144 ; // Length of bar
G = 11.5e06; // Modulus of elasticity in Psi
Ip = 17.18 ; // Polar moment of inertia
U = ((t^2)*(L^3))/(G*Ip*6) // strain energy in in-lb
disp("in-lb",U,"The strain energu for the hollow shaft is")