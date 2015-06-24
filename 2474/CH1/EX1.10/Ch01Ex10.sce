// Scilab code Ex1.10: Pg.36 (2008)
clc; clear;
x = 30;    // Angle made by one side of square with x' axis, degree
Beta = 0.5;    // boost factor = v/c
gama = 1/sqrt(1-(Beta)^2)    // Relativistic factor
theta = atand(gama*sind(x)/cosd(x));
phi = atand(gama*cosd(x)/sind(x));
printf("\nThe moving square appears to be a parallelogram with sides A and B making angles %4.1f degree and %4.1f degree respectively with the x-axis", phi, theta);

// Result
// The moving square appears to be a parallelogram with sides A and B making angles 63.4 degree and 33.7 degree respectively with the x-axis 