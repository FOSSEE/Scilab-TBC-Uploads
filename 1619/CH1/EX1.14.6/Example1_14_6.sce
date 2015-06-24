//Example 1.14.6 page 1.46
// To  find Numerical Aperture, solid acceptance angle, and number of modes.

clc;
clear;

V= 26.6;    // Normalised frequency..
lamda= 1300*10^-9;       //wavelength of operation..
a= 25*10^-6;    // radius of core..

NA = V*lamda/(2*%pi*a);     //Numerical Aperture..
printf('The Numerical Aperture is %.2f',NA);
theta = %pi*NA^2;       //solid Acceptance Angle..
printf('\n\nThe solid acceptance angle is %.3f radians',theta);

M= V^2/2;       //number of modes..
printf("\n\nThe number of modes in the fibre are %.2f",M);
