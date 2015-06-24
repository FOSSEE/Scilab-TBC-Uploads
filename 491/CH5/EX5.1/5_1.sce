L = 8 ; // length of beam in ft
h = 6 ; // Height of beam in inch
e = 0.00125 ; // elongation on the bottom surface of the beam
y = -3 ; // Distance of the bottom surface to the neutral surface of the beam in inch
r = -(y/e) ; // Radius of curvature
disp("ft",r,"radius of curvature is")
k = 1/r ; // curvature in in-1
disp("ft-1",k,"curvature")
theta = asind((L*12)/(2*r)) ; // angle in degree
disp("degree",theta,"Angle of twist")
del = r*(1-cosd(theta)); //Deflection in inch



