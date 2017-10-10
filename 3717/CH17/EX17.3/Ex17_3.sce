// Ex17_3 Page:326 (2014)
clc;clear;
e = 1.6e-019;    // Charge on an electron, C
E = 2.48e+004;    // Applied electric field, N/C
B = 0.75;    // Applied magnetic field, T
R0 = 1.2e-015;    // Nuclear constant, m 
m1 = 12*1.6605e-027;    // Mass of the C-12 ion
m2 = 13*1.6605e-027;    // Mass of the C-13 ion
m3 = 14*1.6605e-027;    // Mass of the C-14 ion
r1 = E*m1/(e*B^2*1e-003);    // Radius of orbit of C-12 ion, mm
r2 = E*m2/(e*B^2*1e-003);    // Radius of orbit of C-13 ion, mm
r3 = E*m3/(e*B^2*1e-003);    // Radius of orbit of C-14 ion, mm
d1 = 2*r2 - 2*r1;    // Distance between the lines of C-12 and C-13, mm
d2 = 2*r3 - 2*r2;    // Distance between the lines of C-13 and C-14, mm
d = d1/2;    // Separations between the lines when the ions are doubly charged, mm
printf("\nThe distance between the lines of C-12 and C-13 = %4.2f mm", d1);
printf("\nThe distance between the lines of C-13 and C-14 = %4.2f mm", d2);
printf("\nThe separation between the lines when the ions are doubly charged = %4.2f mm", d);

// Result
// The distance between the lines of C-12 and C-13 = 0.92 mm
// The distance between the lines of C-13 and C-14 = 0.92 mm
// The separation between the lines when the ions are doubly charged = 0.46 mm 