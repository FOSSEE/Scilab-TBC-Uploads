L = 12 ; // Length of beam in ft
q = 420 ; // Uniform load intensity in lb/ft
s = 1800 ; // Allowable bending stress in psi
w = 35 ; // weight of wood in lb/ft3
M = (q*L^2*12)/8 ; // Bending moment in lb-in
S = M/s ; // Section Modulli in in3
// From Appendix F
q1 = 426.8; // New uniform load intensity in lb/ft
S1 = S*(q1/q); // New section modulli in in3
// From reference to appendix F, a beam of cross section 3*12 inch is selected
disp("Beam of crosssection 3*12 is sufficient")