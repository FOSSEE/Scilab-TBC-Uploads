// Scilab Code Ex3b.2: Page-163 (2008)
clc; clear;
// Function to convert degree to degree-minute
function [d,m]= deg2deg_min(deg)
    d = int(deg);
    m = (deg - d)*60;
endfunction
mu_air = 1;    // Refractive index fo air
mu_glass = 1.54;    // Refractive index of glass
mu_water = 1.33;    // Refractive index of water
// Air to glass incidence
i_p = atand(mu_glass/mu_air);    // Angle of polarization for air to glass incidence, degree
printf("\nFor air to glass, i_p = %d degree", i_p);
// glass to air incidence
i_p = atand(mu_air/mu_glass);    // Angle of polarization for glass to air incidence, degree
printf("\nFor glass to air, i_p = %d degree", ceil(i_p));
// Water to glass incidence
i_p = atand(mu_glass/mu_water);    // Angle of polarization for water to glass incidence, degree
[d,m] = deg2deg_min(i_p);    // Call function to convert to deg-min
printf("\nFor water to glass, i_p = %d degree %d min", d, m);
// Glass to water incidence
i_p = atand(mu_water/mu_glass);    // Angle of polarization for glass to water incidence, degree
[d,m] = deg2deg_min(i_p);    // Call function to convert to deg-min
printf("\nFor glass to water, i_p = %d degree %d min", d, m);
// Air to water incidence
i_p = atand(mu_water/mu_air);    // Angle of polarization for air to water incidence, degree
[d,m] = deg2deg_min(i_p);    // Call function to convert to deg-min
printf("\nFor air to water, i_p = %d degree %d min", d, m);
// Water to air incidence
i_p = atand(mu_air/mu_water);    // Angle of polarization for water to airincidence, degree
[d,m] = deg2deg_min(i_p);    // Call function to convert to deg-min
printf("\nFor water to air, i_p = %d degree %d min", d, m);

// Result
// For air to glass, i_p = 57 degree
// For glass to air, i_p = 33 degree
// For water to glass, i_p = 49 degree 11 min
// For glass to water, i_p = 40 degree 48 min
// For air to water, i_p = 53 degree 3 min
// For water to air, i_p = 36 degree 56 min 