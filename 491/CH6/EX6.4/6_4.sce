q = 3000 ; // Uniform load intensity in N/m
a = 26.57 ; // tilt of the beam in degree
b = 0.1; // width of the beam
h = 0.15; // height of the beam
L = 1.6 ; // Span of the beam
qy = q*cosd(a) ; // Component of q in y direction
qz = q*sind(a) ; // Component of q in z direction
My = (qz*L^2)/8 ; // Maximum bending moment in y direction
Mz = (qy*L^2)/8 ; // Maximum bending moment in z direction
Iy = (h*b^3)/12; // Moment of inertia along y
Iz = (b*h^3)/12; // Moment of inertia alon z
s = ((3*q*L^2)/(4*b*h))*((sind(a)/b)+(cosd(a)/h));
sc = -s ; // Maximum compressive stress
st = s; // Maximum tensile stress
disp("Pa",sc,"Maximum compressive stress in the beam is")
disp("Pa",st,"Maximum tensile stress in the beam is")
// Neutral axis
l = (h/b)^2;
t = sind(a)/cosd(a);
j = l*(sind(a)/cosd(a));
be = atand(j);  // Inclination of Neutral axis to z axis
disp("degree",be,"Inclination of Neutral axis to z axis is")