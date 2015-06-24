L = 3 ; // Span of beam in ft
q = 160 ; // Uniform load intensity in lb/in
b = 1; // Width of cross section
h = 4; // Height of cross section
// Calculations from chapter 4
Mc = 17920 ; // Bending moment in ld-in
Vc = -1600 ; // Loading in lb
//
I = (b*(h^3))/12; // Moment of inertia in in4
sc = -(Mc*1)/I; // Compressive stress at point C in psi
Ac = 1*1 ; // Area of section C in inch2
yc = 1.5 ; // distance between midlayers od section C and cross section of beam
Qc = Ac*yc ; // First moment of C cross section in inch3
tc = (Vc*Qc)/(I*b); // Shear stress in Psi
disp("psi",sc,"Normal stress at C")
disp("psi",tc,"Shear stress at C")