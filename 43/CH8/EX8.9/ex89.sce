clc;
// Define the polynomial
z=poly(0,"z");
p=5+3*z+2*z^2+2*z^3+z^4+z^5;
// Calculate the routh of above polynomial
r=routh_t(p);