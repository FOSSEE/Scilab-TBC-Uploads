// 4*6 inch wood beam dimension
// 4*0.5 inch steel beam dimension
M = 60 ; // Moment in k-in
E1 = 1500 ; // in Ksi
E2 = 30000; // in Ksi
h1 = 5.031 ; // Distance between top surface and neutral axis of the beam in inch by solving 1500*(h1-3)*24 + 30000*(h1-6.25)*2 = 0
h2 = 6.5 - h1 ;
I1 = (1/12)*(4*6^3) + (4*6)*(h1-3)^2 ; // Momeny of inertia of the wooden cross section
I2 = (1/12)*(4*0.5^3) + (4*0.5)*(h2-0.25)^2 ; // Momeny of inertia of the steel cross section
I = I1 + I2 ; // Moment of inertia of whole cross section
// Material 1
s1a = -(M*h1*E1)/((E1*I1)+(E2*I2)) ; // Maximum compressive stress in ksi where y = h1
s1c = -(M*(-(h2-0.5))*E1)/((E1*I1)+(E2*I2)) ; // Maximum tensile stress in ksi where y = -(h2-0.5)
disp("ksi",s1a," Maximum compressive stress in wood is")
disp("ksi",s1c," Maximum tensile stress in wood is")
// Material 2
s2a = -(M*(-h2)*E2)/((E1*I1)+(E2*I2));  // Maximum tensile stress in ksi where y = -h2
s2c = -(M*(-(h2-0.5))*E2)/((E1*I1)+(E2*I2));  // Minimum tensile stress in ksi where y = -(h2-0.5)
disp("ksi",s2a," Maximum tensile stress in steel is")
disp("ksi",s2c," Minimum tensile stress in steel is")