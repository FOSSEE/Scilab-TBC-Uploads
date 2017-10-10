clc; funcprot(0);
//Example 5.3  Curved Deflecting Surface  

// Initialisation of variables
eps = 4;
rho = 0.002378;
w = 50;
h = 10;
V = 88;     // Velocity in ft per seconds

// Calculations
A = w*h;
F = rho*A*V^2*sqrt(2*(1-cosd(eps)));
Fh = rho*A*V^2*(1-cosd(eps));
Fv = rho*A*V^2*sind(eps);

//Results 
disp(Fv,"Vertical component of Force(lb) :",Fh,"Horizontal component of Force(lb:)", F,"Net Force(lb) :", "!----Magnitude of force required deflect 4 degree ddownward without loss in speed ----!");

