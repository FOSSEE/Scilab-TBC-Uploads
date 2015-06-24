L = 22 ; // Span of beam in ft
q = 1.5; // Uniform load intensity in k/ft
P = 12 ; // Concentrated in k
b = 8.75 ; // width of cross section of beam in inch
h = 27 ; // height of cross section of beam in inch
Ra = 23.59; // Reaction at point A
Rb = 21.41; // Reacyion at point B
Mmax = 151.6 ; // Maximum bending moment
S = (b*h^2)/6 ; // Section modulus
s = (Mmax*12)/S  // stress in k
st = s*1000 ; // Tensile stress
disp("psi",st,"Maximum tensile stress in the beam")
sc = -s*1000 ; // Compressive stress
disp("psi",sc,"Maximum compressive stress in the beam")