// Scilab Code Ex3.6 Void space in cubic close packing: Page-101 (2010)
R = 1;    // For simplicity, radius of the sphere, m
// For cubic close packing, side of the unit cell and the radius of the sphere is related as
//     sqrt(2)*a = 4*R, solving for a
a = 2*sqrt(2)*R;    // Lattice parameter for cubic close packing, m
V_cell = a^3;    // Volume of the unit cell
n = 4;    // Number of lattice points in fcc unit cell
V_occupied = 4*4/3*%pi*((1.000)^3+(0.414)^3+2*(0.225)^3); // Volume occupied by the atoms, metre cube
void_space = V_cell - V_occupied;     // Void space in the close packing
percent_void = void_space/V_cell*100; // Percentage void space
printf("\nThe void space in the close packing is : %2.0f percent", percent_void);
//Result 
// The void space in the close packing is : 19 percent