// Scilab Code Ex6.3 Rate of diffusion of carbon through steel bar: Page-196 (2010)
a = 3.65e-010;    // Lattice parameter of fcc structure of iron, m
D = 3e-011;    // Diffusion coeffcient of carbon in iron at 1000 degree celsius, metre square per sec
n1 = 20;    // Number of unit cells per carbon atom at the surface of steel
n2 = 30;    // Number of unit cells per carbon atom at a depth 1 mm from the surface of steel
c1 = 1/(n1*a^3);    // Atomic percent of carbon at the surface, per metre cube
c2 = 1/(n2*a^3);    // Atomic percent of carbon at a depth 1 mm from the surface, per metre cube
dx = 1e-03;    // Thickness of the steel bar, m
J = -D*((c2-c1)/dx);    // Fick's first law giving outward flux of carbon through the Steel bar, C atoms per metre square per second
J_uc = J*a^2*60;    // The number of carbon atoms diffusing through each unit cell per minute 
printf("\nThe number of carbon atoms diffusing through each unit cell per minute = %2d atoms per minute", J_uc);   
// Result
// The number of carbon atoms diffusing through each unit cell per minute = 82 atoms per minute 