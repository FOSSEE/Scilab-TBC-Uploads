L = 3.6 ; // Length of steel pipe coloumn
d = 0.16 ; // Outer diameter in m
P = 240e03; // Load in N
E = 200e09; // Modulus of elasticity in Pa
sy = 259e06 ; // yeilding stress in Pa
Le = 2*L ; // As it in fixed-free condition
sc = sqrt((2*%pi^2*E)/sy); // Critical slenderness ratio
K = 2;
// First trial
t = 0.007; // Assumed thick ness in m
I = (%pi/64)*(d^4-(d-2*t)^4) // Moment of inertia
A = (%pi/4)*(d^2-(d-2*t)^2)  // Area of cross section
r = sqrt(I/A) ; // Radius of gyration
sc_ = (K*L)/r ; // Slender ness ratio
n2 = 1.98 ; // From equation 11.80
sa = (sy/(2*n2))*(sc^2/sc_^2) // Allowable stress
Pa = sa*A ; // Allowable axial load in N
// Interpolation
t = [7 8 9];
Pa = [196 220 243];
t_min = interpln([Pa;t],240) ; // Interpolation for getting the minimum length
disp("mm",t_min,"The minimum required thickness of the steel pipe is")

