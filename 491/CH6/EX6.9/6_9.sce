b = 5 ; // in inch
b1 = 4 ; // in inch
h = 9 ; // in inch
h1 = 7.5 ; // in inch
sy = 33 ; // stress along y axis in ksi
M = (sy/12)*((3*b*h^2)-(b+(2*b1))*(h1^2)) ; // Bending moment acting in k-in
disp("k-in",M,"the magnitude of the moment M is")
