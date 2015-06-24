// Scilab Code Ex1.2 Primitive unit cell: Page-4 (2010)
a = 3, b = 3;     // Lattice translation vectors along X and Y direction, angstrom
c_bar = 3;    // Assumed translation vector along Z direction, angstrom
c = 1.5*(a+b+c_bar);    // Real translation vector along Z direction, angstrom
printf("\n%3.1f is the body centered position of a cubic unit cell defined by the primitive translation vectors a, b and c_bar.", c);
V_con = a^3;    // Volume of conventional unit cell, metre cube
V_primitive = 1/2*V_con;    // Volume of primitive unit cell, metre cube
printf("\nThe volume of conventional unit cell: %2d angstrom cube", V_con);
printf("\nThe volume of primitive unit cell: %4.1f angstrom cube", V_primitive);

// Result 
// 13.5 is the body centered position of a cubic unit cell defined by the primitive translation vectors a, b and c_bar.
// The volume of conventional unit cell: 27 angstrom cube
// The volume of primitive unit cell: 13.5 angstrom cube 