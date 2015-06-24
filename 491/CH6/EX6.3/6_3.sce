// 4*6 inch wood beam dimension
// 4*0.5 inch steel beam dimension
M = 60 ; // Moment in k-in
E1 = 1500 ; // in Ksi
E2 = 30000; // in Ksi
b = 4; // width of crosssection in inch
// Transformed Section
n = E2/E1 ; // Modular ratio
b1 = n*4 ; // Increased width of transformed cross section
// Neutral axis
h1 = ((3*4*6)+(80*0.5*6.25))/((4*6)+(80*0.5)); // Distance between top surface and neutral axis of the beam in inch
h2 = 6.5 - h1 ; // in inch
// Moment of inertia
It = (1/12)*(4*6^3) + (4*6)*(h1-3)^2 + (1/12)*(80*0.5^3) + (80*0.5)*(h2-0.25)^2 ; // Moment of inertia of transformed cross section
// Material 1
s1a = -(M*h1)/It;  // Maximum tensile stress in ksi where y = h1
s1c = -(M*(-(h2-0.5)))/It;  // Maximum compressive stress in ksi where y = -(h2-0.5)
disp("psi",s1a*1000,"Maximum tensile stress in wood is")
disp("psi",s1c*1000,"Maximum compressive stress in wood is")
// Material 2
s2a = -(M*(-h2)*n)/It ; // Maximum tensile stress in ksi where y = -h2
s2c = -(M*(-(h2-0.5)*n))/It ; // Minimum tensile stress in ksi where y = -(h2-0.5)
disp("psi",s2a*1000," Maximum tensile stress in steel")
disp("psi",s2c*1000," Minimum tensile stress in steel")



