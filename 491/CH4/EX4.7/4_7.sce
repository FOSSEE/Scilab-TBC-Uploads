q = 1 ; // Uniform load intensity in k/ft
M0 = 12 ; // Couple in k-ft
Rb = 5.25 ; // Reaction at B in k
Rc = 1.25 ; // Reaction at C in k
b = 4 ; // Length of section AB in ft
Mb = -(q*(b^2))/2 ; // Moment acting at B
disp("k-ft",Mb,"Bending moment at B")