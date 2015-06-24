//Chapter 24
clc
//Example 7
//given
lambda=632.8 //wavelength of monochromatic light from helium-neon laser in meter
a=6000 //lines in diffraction grating per cm
d=10^7/a//slit seperation in nm
//for the first order maximum we have m=1
sin_theta1=lambda/d
theta1=asind(sin_theta1)
disp(theta1,"Angle in degrees at which first order maxima is observed is ")
//for the second order maximum we have m=2
sin_theta2=2*lambda/d
theta2=asind(sin_theta2)
disp(theta2,"Angle in degrees at which second order maxima is observed is ")
disp("for higher order number of diffraction the the solutions are non realistic")


