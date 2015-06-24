// Scilab Code Ex5.18 Minimum number of dislocations in motion from shearing rate of copper: Page-176 (2010)
a = 3.61e-010;    // Lattice parameter of copper, m
epsilon_dot = 10/60;    // Strain rate of plastic deformation, mm per sec
v_d = 1e+06;    // Velocity of dislocation, mm per sec
V = 1e+03;    // Volume of the crystal, mm cube
b = a*1e+03/sqrt(2);    // Burger vector magnitude for fcc crystal of copper, mm
// Strain rate of plastic deformation is given by
// epsilon_dot = rho*b*v_d, solving for rho
rho = epsilon_dot/(b*v_d);    // Density of the mobile disloacations, per mm cube
N = round(rho*V);    // Number of dislocations in motion in the whole cube
printf("\nThe number of dislocations in motion in the whole cube = %3d", N);
// Result
// The number of dislocations in motion in the whole cube = 653