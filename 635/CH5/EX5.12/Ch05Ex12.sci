// Scilab Code Ex5.12 Resolved stress in a direction from applied stress in some other direction of bcc iron: Page-169 (2010)
sigma = 123;    // Axial stress applied in the direction [110] of bcc iron, MPa
// For directions [010] and [110]
h1 = 0; k1 = 1; l1 = 0     // Miller indices for first set of planes
h2 = 1; k2 = 1; l2 = 0;    // Miller indices for second set of planes
cos_phi = (h1*h2+k1*k2+l1*l2)/(sqrt(h1^2+k1^2+l1^2)*sqrt(h2^2+k2^2+l2^2));    // Cosine of angle between [010] and [110] directions
// For directions [110s] and [101]
h1 = 1; k1 = 0; l1 = 1     // Miller indices for first set of planes
h2 = 1; k2 = 1; l2 = 0;    // Miller indices for second set of planes
cos_lambda = (h1*h2+k1*k2+l1*l2)/(sqrt(h1^2+k1^2+l1^2)*sqrt(h2^2+k2^2+l2^2));    // Cosine of angle between [110] and [101] directions
tau = sigma*cos_phi*cos_lambda;    // Resolved shear stress in the [101] direction on the (010) plane, MPa
printf("\nThe resolved shear stress in the [101] direction on the (010) plane = %4.1f MPa", tau);
// Result
// The resolved shear stress in the [101] direction on the (010) plane = 43.5 MPa 
