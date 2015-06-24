d = 0.05 ; // Diameter of shaft in m
T = 2400 ; // Torque transmitted by the shaft in N-m
P = 125000; // Tensile force
s0 = (4*P)/(%pi*d^2) // Tensile stress in
t0 = (16*T)/(%pi*d^3)  // Shear force 
// Stresses along x and y direction
sx = 0 ;
sy = s0; 
txy = -t0 ; 
s1 = (sx+sy)/2 + sqrt(((sx-sy)/2)^2 + (txy)^2) ; // Maximum tensile stress 
s2 = (sx+sy)/2 - sqrt(((sx-sy)/2)^2 + (txy)^2) ; // Maximum compressive stress 
tmax =  sqrt(((sx-sy)/2)^2 + (txy)^2) ; // Maximum in plane shear stress 
disp("Pa",s1,"Maximum tensile stress")
disp("Pa",s2,"Maximum compressive stress")
disp("Pa",tmax,"Maximum in plane shear stress")