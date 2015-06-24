// Scilab code Ex7.1: Pg.277 (2008)
clc; clear;

// Part (1)
l = 2;    // Orbital quantum momentum
// For simplicity assume h_cross be unity
h_cross = 1;    // Reduced plank's constant, J-s
printf("\nThe possible values of L_z (in units of h_cross) are ");
for i = -2:2
    printf(" %1d  ",i);
end

// Part (2)
m = 2;    // Magnetic quantum number
L_z = m*h_cross;    // Z-component of angular momentum
L = sqrt(l*(l+1))*h_cross;    // Angular momentum
printf("\nThe magnitude of L (in units of h_cross) = %4.2f", L);

// Part (3)
theta = (180/%pi)*acos((L_z)/(L));    // Smallest angle between L & z-axis, degrees
printf("\nThe smallest angle between L and z-axis = %4.1f degrees", theta);

// Result
// The possible values of L_z (in units of h_cross) are  -2   -1   0   1   2  
// The magnitude of L (in units of h_cross) = 2.45
// The smallest angle between L and z-axis = 35.3 degrees 