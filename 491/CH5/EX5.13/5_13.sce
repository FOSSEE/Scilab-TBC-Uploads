d2 = 4; // Outer diameter in inch
d1 = 3.2; // Inner diameter in inch
r2 = d2/2; // Outer radius in inch
r1 = d1/2; // inner radius in inch
P = 1500 ; // Horizontal force in lb
// Part (a)
t_max = ((r2^2+(r2*r1)+r1^2)*4*P)/(3*%pi*((r2^4)-(r1^4))) ; // Mximum shear stress in Psi
disp("psi",t_max,"Maximum shear stress in the pole is")
// Part (b)
d0 = sqrt((16*P)/(3*%pi*t_max)) ; // Diameter of solid circular cross section in meter
disp("m",d0,"Diameter of solid circular cross section is ")