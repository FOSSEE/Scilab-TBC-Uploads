// Scilab code Ex8.14: Minimum distance from the centre of the Laue pattern  of an fcc crystal Page 289 (2010)
n = 1;    // Consider the first order diffraction
a = 4.5e-010;    // Lattice parameter for fcc lattice, m
V = 50e+03;    // Potential difference across the X-ray tube, volt
D = 5;    // Crystal to film distance, cm 
h = 1, k = 1, l = 1;    // Incides for the planes of maximum spacing
lambda_min = 1.24e-06/V;    // The cut-off wavelength of X-rays, m
d_111 = a/sqrt(h^1+k^2+l^2);
theta_111 = asind(n*lambda_min/(2*d_111));
// As tan(2*theta_111) = x/D, solving for x
x = D*tand(2*theta_111);    // // Minimum distance from the centre of Laue pattern
printf("\nThe minimum distance from the centre of the Laue pattern at which reflections can occur from the planes of maximum spacing = %4.2f cm", x);
// Result
// The minimum distance from the centre of the Laue pattern at which reflections can occur from the planes of maximum spacing = 0.48 cm