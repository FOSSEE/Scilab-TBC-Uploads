// Ex10_10  Page:220 (2014)
clc;clear;
lambda = 1.4e-010;    // Wavelength of X-rays, m
a = 5e-010;    // Lattice parameter, m
h = 1, k = 1, l = 1;    // Miller indices of planes from which the reflection occurs
d_111 = a/sqrt(3);    // Interplanar spacing between (1 1 1) planes, m
n = 1;    // Order of diffraction
theta_111 = asind(n*lambda/(2*d_111));    // Angle at which the X-ray is incident on (1 1 1) plane of the crystal, degree
printf("\nThe angle at which the X-ray is incident on (1 1 1) plane = %2d degree", theta_111);

// Result
// The angle at which the X-ray is incident on (1 1 1) plane = 14 degree 