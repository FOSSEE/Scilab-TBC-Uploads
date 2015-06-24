// Scilab Code Ex12.3: Page-437 (2014)
clc; clear;
A_U238 = 238;    // Mass number of U-238
A_He4 = 4;    // Mass number of He-4
r0 = 1.2;    // Nuclear radius constant, nm
R_U238 = r0*A_U238^(1/3);    // Radius of U-238 nucleus, fm
R_He4 = r0*A_He4^(1/3);    // Radius of He-4 nucleus, fm
printf("\nThe radii of U-238 and He-4 nuclei are %3.1f fm and %3.1f fm repectively", R_U238, R_He4);
ratio = R_U238/R_He4;    // Ratio of the two radii
printf("\nThe ratio of radius to U-238 to that of He-4 = %3.1f", ratio);

// Result
// The radii of U-238 and He-4 nuclei are 7.4 fm and 1.9 fm repectively
// The ratio of radius to U-238 to that of He-4 = 3.9 
