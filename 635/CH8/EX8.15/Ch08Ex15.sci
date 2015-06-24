// Scilab code Ex8.15: Calculating unit cell height along the axis of a rotation photograph Page 291 (2010)
n = 1;    // Consider the first order diffraction of X-rays
S = [0.29,0.59,0.91,1.25,1.65,2.12];    // An array of heights of first six layers above(below) the zero layer, cm
R = 3;        // Radius of the camera, cm
lambda = 1.54e-08;    // Wavelength of the X-rays, cm
// For an a-axis rotation photograph, the unit cell parameter is given by
// a = n*lambda/S(n)*(R^2 + S(n)^2)^(1/2) 
// Calculate 'a' for six different values of n from 1 to 6
for n = 1:1:6
    a = (n*lambda/S(n))*(R^2 + S(n)^2)^(1/2);
end 
printf("\nThe unit cell height of the crystal = %2.0f angstrom", a/1D-8);

// Result
// The unit cell height of the crystal = 16 angstrom