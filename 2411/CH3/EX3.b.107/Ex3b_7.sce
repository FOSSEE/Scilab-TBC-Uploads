// Scilab Code Ex3b.7: Page-165 (2008)
clc; clear;
// For half reduction in intensity
I_ratio = 1/2;    // Intensity ratio
theta = acosd(sqrt(I_ratio));    // Angle of rotation of polaroid, degree
printf("\nFor half reduction in intensity, the angle of rotation = %d degree", theta);
// For one-fourth reduction in intensity
I_ratio = 1/4;    // Intensity ratio
theta = acosd(sqrt(I_ratio));    // Angle of rotation of polaroid, degree
printf("\nFor one-fourth reduction in intensity, the angle of rotation = %d degree", theta);

// Result
// For half reduction in intensity, the angle of rotation = 45 degree
// For one-fourth reduction in intensity, the angle of rotation = 60 degree 
