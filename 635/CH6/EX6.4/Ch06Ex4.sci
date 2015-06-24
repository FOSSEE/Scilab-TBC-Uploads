// Scilab Code Ex6.4 Diffusion through a cylinder: Page-199 (2010)
r = 12;    // Radius of cylindrical crystal, mm
A1 = %pi*r^2;    // Cross-sectional area for diffusion through the cylinder, milli-metre square
t = 4e-07;    // Assume effective thickness of the surface to be 4 angstrom = two atomic diameters, mm
A2 = 2*%pi*r*t;    // Cross-sectional area for diffusion along the surface, milli-metre square
ratio = A2/A1;    // Ratio of two cross-sectional areas
printf("\nThe ratio of two cross-sectional areas = %4.2e", ratio);   
// Result
// The ratio of two cross-sectional areas = 6.67e-008  