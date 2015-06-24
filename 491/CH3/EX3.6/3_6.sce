d1 = 0.06 ; // Inner diameter in meter
d2 = 0.08 ; // Outer diameter in meter
r = d2/2; // Outer radius
G = 27e09 ; // Modulus of elasticity
T = 4000 ; // Torque in N-m
Ip = (%pi/32)*((d2^4)-(d1^4)); // Polar moment of inertia
t_max = (T*r)/Ip ; // maximum shear stress
disp("Pa",t_max,"Maximum shear stress in tube is ")
s_t = t_max ; // Maximum tensile stress
disp("Pa",s_t,"Maximum tensile stress in tube is ")
s_c = -(t_max); // Maximum compressive stress
disp("Pa",s_c,"Maximum compressive stress in tube is ")
g_max = t_max / G ; // Maximum shear strain in radian
disp("radian",g_max,"Maximum shear strain in tube is ")
e_t = g_max/2 ; // Maximum tensile strain in radian
disp("radian",e_t,"Maximum tensile strain in tube is ")
e_c = -g_max/2 ; // Maximum compressive strain in radian
disp("radian",e_c,"Maximum compressive strain in tube is ")

