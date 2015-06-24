b = 6 ; // Outer dimension of the pole in inch
t = 0.5 ; // thickness of the pole
P1 = 20*(6.75*24); // Load acting at the midpoint of the platform
d = 9 ; // Distance between longitudinal axis of the post and midpoint of platform
P2 = 800; // Load in lb
h = 52 ; // Distance between base and point of action of P2
M1 = P1*d; // Moment due to P1
M2 = P2*h; // Moment due to P2
A = b^2 - (b-2*t)^2; // Area of the cross section
sp1 = P1/A ; // Comoressive stress due to P1 at A and B
I = (1/12)*(b^4 - (b-2*t)^4); // Moment of inertia of the cross section
sm1 = (M1*b)/(2*I);// Comoressive stress due to M1 at A and B
Aweb = (2*t)*(b-(2*t)); // Area of the web
tp2 = P2/Aweb ; // Shear stress at point B by lpad P2
sm2 = (M2*b)/(2*I);// Comoressive stress due to M2 at A 
sa = sp1+sm1+sm2 ; // Total Compressive stress at point A
sb = sp1+sm1; // Total compressive at point B 
tb = tp2; // Shear stress at point B
// Principle stresses 
sxa = 0 ; sya = -sa ; txya = 0;
sxb = 0 ; syb = -sb ; txyb = tp2 ;
// Stresses at A
s1a = (sxa+sya)/2 + sqrt(((sxa-sya)/2)^2 + (txya)^2);  // Maximum tensile stress 
s2a = (sxa+sya)/2 - sqrt(((sxa-sya)/2)^2 + (txya)^2); // Maximum compressive stress 
tmaxa =  sqrt(((sxa-sya)/2)^2 + (txya)^2);  // Maximum in plane shear stress
disp("Psi",s1a,"Maximum tensile stress at point A is")
disp("Psi",s2a,"Maximum compressive stress at point A is")
disp("Psi",tmaxa,"Maximum in plane shear stress at point A is")
// Stress at B 
s1b = (sxb+syb)/2 + sqrt(((sxb-syb)/2)^2 + (txyb)^2);  // Maximum tensile stress 
s2b = (sxb+syb)/2 - sqrt(((sxb-syb)/2)^2 + (txyb)^2);  // Maximum compressive stress 
tmaxb =  sqrt(((sxb-syb)/2)^2 + (txyb)^2);  // Maximum in plane shear stress
disp("Psi",s1b,"Maximum tensile stress at point B is")
disp("Psi",s2b,"Maximum compressive stress at point B is")
disp("Psi",tmaxb,"Maximum in plane shear stress at point B is") 

