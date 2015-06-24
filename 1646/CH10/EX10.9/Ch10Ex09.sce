// Scilab Code Ex10.9: Page:513 (2011) 
clc;clear;
x = poly(0, 'x');
V = 1000/x+1500/x^2+500/x^3;    // Given electric potential at a point (x,0,0), V
E = -1*derivat(V);  // Electric field at a point as gradient of scalar potential, N/C
E_x = horner(E, 1);     // Electric field at the point x = 1, N/C
printf("\nThe electric field strength at point x = 1 is %4di V/m", E_x);

// Result
// The electric field strength at point x = 1 is 5500i V/m 
