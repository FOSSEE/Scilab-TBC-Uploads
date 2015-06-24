s = 11e06 ; // allowable tensile stress in pa
t = 1.2e06 ; // allowable shear stress in pa
b = 0.1 ; // Width of cross section in m
h = 0.15 ; // Height of cross section in m
a = 0.5 ; // in m
P_bending = (s*b*h^2)/(6*a); // Bending stress in N
P_shear = (2*t*b*h)/3;  // shear stress in N
Pmax = P_bending; // Because bending stress governs the design
disp("N",Pmax,"the maximum permissible value Pmax of the loads")
