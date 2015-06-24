clc 
 
// Given that
lambda = 1 // let wavelength is unity
a = 1 // let amplitude is unity
del_x = lambda/8 // Path difference between two points on screen
// Problem 1 on page No. 82
printf("\n # Problem 1 # \n")
del_phase = 2*%pi*del_x/lambda // Phase difference 
I1 = 2*a^2*(1+cos(del_phase)) // Intensity at that point
I0 = 4*a^2 // Intensity at center
ratio = I1/I0 // Ratio of intensities 
printf("\n Ratio of intensities is %f",ratio)
