// Scilab Code Ex16.8 : Page-824 (2011)
clc; clear;
a = 1;    // For simplicity assume lattice parameter of cubic crystal to be unity, unit
// For (011) planes
h = 0; k = 1; l = 1; // Miller Indices for planes in a cubic crystal
d_011 = a/(h^2+k^2+l^2)^(1/2);  // The interplanar spacing for cubic crystals, m
printf("\nThe interplanar spacing between consecutive (011) planes = a/sqrt(%d)", 1/d_011^2);

// For (101) planes
h = 1; k = 0; l = 1; // Miller Indices for planes in a cubic crystal
d_101 = a/(h^2+k^2+l^2)^(1/2);  // The interplanar spacing for cubic crystals, m
printf("\nThe interplanar spacing between consecutive (101) planes = a/sqrt(%d)", 1/d_101^2);

// For (112) planes
h = 1; k = 1; l = 2; // Miller Indices for planes in a cubic crystal
d_112 = a/(h^2+k^2+l^2)^(1/2);  // The interplanar spacing for cubic crystals, m
printf("\nThe interplanar spacing between consecutive (112) planes = a/sqrt(%d)", 1/d_112^2);

// Result 
// The interplanar spacing between consecutive (011) planes = a/sqrt(2)
// The interplanar spacing between consecutive (101) planes = a/sqrt(2)
// The interplanar spacing between consecutive (112) planes = a/sqrt(5) 
