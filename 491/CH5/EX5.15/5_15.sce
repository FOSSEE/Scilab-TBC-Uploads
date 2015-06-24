V = 10000; // Vertical shear force in lb
b = 4; // in inch
t = 1; // in inch
h = 8; // in inch
h1 = 7; // in inch
A = b*(h-h1) + t*h1 ;// Area of cross section 
Qaa = ((h+h1)/2)*b*(h-h1) + (h1/2)*(t*h1); // First moment of cross section
c2 = Qaa/A ; // Position of neutral axis in inch
c1 = h-c2 ; // Position of neutral axis in inch
Iaa = (b*h^3)/3 - ((b-t)*h1^3)/3 ; // Moment of inertia about the line aa
I = Iaa - A*c2^2 // Moment of inertia of crosssection
Q1 = b*(h-h1)*(c1-((h-h1)/2)) ; // First moment of area above the line nn
t1 = (V*Q1)/(I*t)  // Shear stress at the top of web in Psi
Qmax = (t*c2)*(c2/2); // Maximum first moment of inertia below neutral axis
t_max = (V*Qmax)/(I*t);  // Maximum Shear stress in Psi
disp("psi",t1,"Shear stress at the top of the web is")
disp("Psi",t_max,"Maximum Shear stress in the web is")

 
