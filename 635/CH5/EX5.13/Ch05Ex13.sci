// Scilab Code Ex5.13 Determining critical resolved shear stress from applied stress in a given direction  of aluminium: Page-170 (2010)
sigma_critical = 3.5;    // Applied stress in the [1 -1 1] direction, MPa
// For directions [111] and [1 -1 1]
h1 = 1; k1 = 1; l1 = 1;     // Miller indices for first set of planes
h2 = 1; k2 = -1; l2 = 1;    // Miller indices for second set of planes
cos_phi = (h1*h2+k1*k2+l1*l2)/(sqrt(h1^2+k1^2+l1^2)*sqrt(h2^2+k2^2+l2^2));    // Cosine of angle between [111] and [1 -1 1] directions
// For directions [1 - 1 0] and [1 -1 1]
h1 = 1; k1 = -1; l1 = 0     // Miller indices for first set of planes
h2 = 1; k2 = -1; l2 = 1;    // Miller indices for second set of planes
cos_lambda = (h1*h2+k1*k2+l1*l2)/(sqrt(h1^2+k1^2+l1^2)*sqrt(h2^2+k2^2+l2^2));    // Cosine of angle between [1 -1 0] and [1 -1 1] directions
tau_c = sigma_critical*cos_phi*cos_lambda;    // The critical resolved shear stress in the [1 -1 0] direction on the (111) plane, MPa
printf("\nThe critical resolved shear stress in the [1 -1 0] direction on the (111) plane = %4.2f MPa", tau_c);
// Result
// The critical resolved shear stress in the [1 -1 0] direction on the (111) plane = 0.95 MPa
