d1 = 0.18 ; // Inner diameter of circular pole in m
d2 = 0.22 ; // Outer diameter of circular pole in m
P = 2000; // Pressure of wind in Pa
b = 1.5 ; // Distance between centre line of pole and board in m
h = 6.6 ; // Distance between centre line of board and bottom of the ploe in m
W = P*(2*1.2) ; // Force at the midpoint of sign 
V = W ; // Load
T = W*b ; // Torque acting on the pole
M = W*h ; // Moment at the bottom of the pole
I = (%pi/64)*(d2^4-d1^4) ; // Momet of inertia of cross section of the pole
sa = (M*d2)/(2*I); // Tensile stress at A 
Ip = (%pi/32)*(d2^4-d1^4) ; // Polar momet of inertia of cross section of the pole
t1 = (T*d2)/(2*Ip); // Shear stress at A and B
r1 = d1/2 ; // Inner radius of circular pole in m
r2 = d2/2 ; // Outer radius of circular pole in m
A = %pi*(r2^2-r1^2); // Area of the cross section
t2 = ((4*V)/(3*A))*((r2^2 + r1*r2 +r1^2)/(r2^2+r1^2)) ; // Shear stress at point B 
// Principle stresses 
sxa = 0 ; sya = sa ; txya = t1;
sxb = 0 ; syb = 0 ; txyb = t1+t2 ;
// Stresses at A
s1a = (sxa+sya)/2 + sqrt(((sxa-sya)/2)^2 + (txya)^2);  // Maximum tensile stress 
s2a = (sxa+sya)/2 - sqrt(((sxa-sya)/2)^2 + (txya)^2) ; // Maximum compressive stress 
tmaxa =  sqrt(((sxa-sya)/2)^2 + (txya)^2);  // Maximum in plane shear stress
disp("Pa",s1a,"Maximum tensile stress at point A is")
disp("Pa",s2a,"Maximum compressive stress at point A is")
disp("Pa",tmaxa,"Maximum in plane shear stress at point A is")
// Stress at B 
s1b = (sxb+syb)/2 + sqrt(((sxb-syb)/2)^2 + (txyb)^2);  // Maximum tensile stress 
s2b = (sxb+syb)/2 - sqrt(((sxb-syb)/2)^2 + (txyb)^2) ; // Maximum compressive stress 
tmaxb =  sqrt(((sxb-syb)/2)^2 + (txyb)^2);  // Maximum in plane shear stress 
disp("Pa",s1b,"Maximum tensile stress at point B is")
disp("Pa",s2b,"Maximum compressive stress at point B is")
disp("Pa",tmaxb,"Maximum in plane shear stress at point B is")


