// Scilab Code Ex6.2 Rate of diffusion of copper through pure Al sheet: Page-196 (2010)
a = 4.05e-010;    // Lattice parameter of fcc Al, m
N = 4;    // Number of Al atoms per unit cell of fcc Al
n = N/a^3;    // Number of Al atoms per unit volume, per metre cube
D = 5.25e-013;    // Diffusion coeffcient of copper in Al at 550 degree celsius, metre square per sec
c1 = 0.19e-02;    // Atomic percent of copper at the surface, per unit volume
c2 = 0.18e-02;    // Atomic percent of copper at the the depth 1.2 mm from the surface, per unit volume
dc = (c2 - c1)*n;   // Change in concentration of copper at 1.2 mm depth of the surface, per metre cube
dx = 1.2e-03;    // Thickness of the pure Al sheet, m
J = -D*(dc/dx);    // Fick's first law giving outward flux of copper through the Al sheet, Cu atoms per metre square per second
printf("\nThe outward flux of copper through the Al sheet = %4.2e Cu atoms per metre square per sec", J);   
// Result
// The outward flux of copper through the Al sheet = 2.63e+015 Cu atoms per metre square per sec  
