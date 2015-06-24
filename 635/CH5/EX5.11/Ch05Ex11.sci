// Scilab Code Ex5.11 Dependence of applied stress on the slip direction of a copper: Page-169 (2010)
tau_critical = 1;    // Critical shear stress for the <-110>{111} slip system, mega-pascal (MPa)
// For directions [001] and [-111]
h1 = 0; k1 = 0; l1 = 1     // Miller indices for first set of planes
h2 = -1; k2 = 1; l2 = 1;    // Miller indices for second set of planes
cos_phi = (h1*h2+k1*k2+l1*l2)/(sqrt(h1^2+k1^2+l1^2)*sqrt(h2^2+k2^2+l2^2));    // Cosine of angle between [001] and [-111] directions
// For directions [001] and [101]
h1 = 0; k1 = 0; l1 = 1     // Miller indices for first set of planes
h2 = 1; k2 = 0; l2 = 1;    // Miller indices for second set of planes
cos_lambda = (h1*h2+k1*k2+l1*l2)/(sqrt(h1^2+k1^2+l1^2)*sqrt(h2^2+k2^2+l2^2));    // Cosine of angle between [001] and [101] directions
sigma = tau_critical/(cos_phi*cos_lambda);    // Stress along [001] direction, newton per metre square
printf("\nThe stress required to be applied along [001] direction to produce slip in the [101] direction on the (-111) plane = %4.2f MPa", sigma);
// For directions [001] and [110]
h1 = 0; k1 = 0; l1 = 1     // Miller indices for first set of planes
h2 = 1; k2 = 1; l2 = 0;    // Miller indices for second set of planes
cos_lambda = (h1*h2+k1*k2+l1*l2)/(sqrt(h1^2+k1^2+l1^2)*sqrt(h2^2+k2^2+l2^2));    // Cosine of angle between [001] and [110] directions
if cos_lambda <> 0 then
    sigma = tau_critical/(cos_phi*cos_lambda);    // Stress along [001] direction, newton per metre square
    printf("\nThe stress required to be applied along [001] direction to produce slip in the [110] direction on the (-111) plane = %4.2f MPa", sigma);
else
    printf("\nSince cos_lambda = 0, this implies that slip cannot occur in [110] direction when the stress is applied along [001] direction");
end
// Result
// The stress required to be applied along [001] direction to produce slip in the [101] direction on the (-111) plane = 2.45 MPa
// Since cos_lambda = 0, this implies that slip cannot occur in [110] direction when the stress is applied along [001] direction