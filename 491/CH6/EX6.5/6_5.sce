L = 12 ; // Length of the beam in ft
P = 10 ; // Load in k acting in vertical direction
//Part (a)
h = 24 ; // Height of beam in inch
Iz = 2100 ; // Moment of inertia along z axis in in4
Iy = 42.2 ; // Moment of inertia along y axis in in4
s_max = (P*(h/2)*L*12)/Iz ; // Maximum stress in Ksi
disp("psi",s_max*1000,"Maximum tensile stress in the beam at the top of the beam")
disp("psi",-s_max*1000,"Maximum compressive stress in the beam at the bottom of the beam")
//Part (b)
a = 1 ; // Angle between y axis and the load
My = -(P*sind(a))*L*12 ; // Moment along y-axis in K-in
Mz = -(P*cosd(a))*L*12 ; // Moment along z-axis in K-in
ba = atand((My*Iz)/(Mz*Iy)); // Orientation of neutral axis
z = -3.5; y = 12 ; // Coordinates of the point A and B where maximum stress occur
s = ((My*z)/Iy)-((Mz*y)/Iz) ; // Stress in Ksi
sa = s ; // Tensile stress at A
sb = -s ; // Compressive stress in B
disp("psi",sa*1000,"The tensile stress at A is")
disp("psi",sb*1000,"The compressive stress at B is")





