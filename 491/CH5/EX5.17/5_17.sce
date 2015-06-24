L = 60 ; // Length of beam in inch
d = 5.5 ; // distance from the point of application of the load P to the longitudinal axis of the tube in inch
b = 6 ; // Outer dimension of tube in inch
A = 20 ; // Area of cross section of tube in inch
I = 86.67 ; // Moment of inertia in in4
P = 1000; // in lb
theta = 60 ; // in degree
Ph = P*sind(60); // Horizontal component
Pv = P*cosd(60); // Vertical component
M0 = Ph*d ; // Moment in lb-in
y = -3 ; // Point at which maximum tensile stress occur in inch
N = Ph ; // Axial force
M = 9870 ; // Moment in lb-in
st_max = (N/A)-((M*y)/I) ; // Maximum tensile stress in Psi
yc = 3 ; // in inch
M1 = 5110 ; // moment in lb-in
sc_left = (N/A)-((M*yc)/I) ; // Stress at the left of point C in Psi
sc_right = -(M1*yc)/I ; // Stress at the right of point C in Psi
sc_max = min(sc_left,sc_right) ; // Because both are negative quantities
disp("psi",sc_max,"The maximum compressive stress in the beam is")
disp("psi",st_max,"The maximum tensile stress in the beam is")
