P = 1500 ; // Load in lb
e = 0.45 ; // ecentricity in inch
h = 1.2 ; // Height of cross section in inch
b = 0.6 ; // Width of cross section in inch
E = 16e06 ; // Modulus of elasticity 
del = 0.12 ; // Allowable deflection in inch
L = asec(1.2667)/0.06588 ; // Maximum allowable length possible
// Above formula comes from solving following equation
// Pcr = (%pi^2*E*I)/(4*(L)^2); I = (h*b^3)/12; del = e*(sec((%pi/2)*sqrt(P/Pcr))-1)
disp("inch",L,"The longest permissible length of the bar is")


