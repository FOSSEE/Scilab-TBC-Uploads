M = 15 ; // Bending moment in k-in
t = 10 ; // Angle between line of action of moment and z-axis
// Properties of cross section
c = 0.634 ; // Location of centroid on the axis of symmetry
Iy = 2.28; // Moment of inertia in y-direction in in4
Iz = 67.4; // Moment of inertia in z-direction in in4
ya = 5 ; za = -2.6+0.634 ; // Coordinates of point A
yb = -5 ; zb = 0.634 ; // Coordinates of point B
My = M*sind(t); // Moment along y-axis
Mz = M*cosd(t); // Moment along z-axis
sa = ((My*za)/Iy)-((Mz*ya)/Iz) ; // Bending stress at point A in ksi
sb = ((My*zb)/Iy)-((Mz*yb)/Iz) ; // Bending stress at point B in ksi
disp("psi",sa*1000,"The bending stress at point A is")
disp("psi",sb*1000,"The bending stress at point B is")
// Neutral axis
j = (Iz/Iy)*(sind(t)/cosd(t)); 
be = atand(j); // Inclination of neutral axis to z-axis in degree
disp("degree",be,"Inclination of neutral axis to z-axis is")

 