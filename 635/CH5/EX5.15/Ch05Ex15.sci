// Scilab Code Ex5.15 Determining applied tensile stress in a direction to initiate plastic deformation: Page-170 (2010)
tau_critical = 0.7;    // Critical resolved shear stress for fcc crystal, MPa
// For directions [100] and [1 1 1]
h1 = 1; k1 = 0; l1 = 0;     // Miller indices for first set of planes
h2 = 1; k2 = 1; l2 = 1;    // Miller indices for second set of planes
cos_phi = (h1*h2+k1*k2+l1*l2)/(sqrt(h1^2+k1^2+l1^2)*sqrt(h2^2+k2^2+l2^2));    // Cosine of angle between [100] and [1 1 1] directions
// For directions [1 0 0] and [1 -1 0]
h1 = 1; k1 = 0; l1 = 0     // Miller indices for first set of planes
h2 = 1; k2 = -1; l2 = 0;    // Miller indices for second set of planes
cos_lambda = (h1*h2+k1*k2+l1*l2)/(sqrt(h1^2+k1^2+l1^2)*sqrt(h2^2+k2^2+l2^2));    // Cosine of angle between [1 0 0] and [1 -1 0] directions
sigma_c = tau_critical/(cos_phi*cos_lambda);    // The critical resolved shear stress in the [1 -1 0] direction on the (1 1 1) plane, MPa
printf("\nThe critical resolved shear stress in the [1 -1 0] direction on the (1 1 1) plane = %3.1f MPa", sigma_c);
// Result
// The critical resolved shear stress in the [1 -1 0] direction on the (1 1 1) plane = 1.7 MPa 