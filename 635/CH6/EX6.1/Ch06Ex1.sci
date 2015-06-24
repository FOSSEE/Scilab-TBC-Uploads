// Scilab Code Ex6.1 Rate of diffusion of nitrogen through steel wall: Page-195 (2010)
D = 1e-019;    // Diffusion coeffcient of nitrogen in steel at room temperature, metre square per sec
dc = 10;    // Concentration of nitrogen at the inner surface of the tank, kg per metre cube
dx = 10e-03;    // Thickness of the steel wall, m
J = D*(dc/dx);    // Fick's first law giving outward flux of nitrogen through steel wall of the tank, kg per metre square per second
printf("\nThe rate at which nitrogen escapes through the tank wall = %1.0e kg per metre square per sec", J);   
// Result
// The rate at which nitrogen escapes through the tank wall = 1e-016 kg per metre square per sec 
