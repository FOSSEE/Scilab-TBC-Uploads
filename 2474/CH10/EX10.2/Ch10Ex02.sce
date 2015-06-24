// Scilab code Ex10.2: Pg.418 (2008)
clc; clear;
lamda = 0.071;    // Wavelength of X-rays, nm
theta = 10.25;    // Detector angle, degrees
// Since (2*d*sin(theta)) = (m*lamda);   (1) & d_o = r_o/sqrt(2);   (2), using (2) in (1) & solving for r_o, we get
r0 = sqrt(2)*lamda/(2*sind(theta));    // Equilibrium spacing in NaCl crystal, nm
printf("\nThe equilibrium spacing in NaCl crystal = %5.3f nm", r0);

// Result
// The equilibrium spacing in NaCl crystal = 0.282 nm 