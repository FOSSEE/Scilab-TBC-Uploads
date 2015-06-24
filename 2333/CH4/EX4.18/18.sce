clc
// Given that
lambda1 = 5000 // Wavelength of light in angstrom
theta1 = 30 // Optical rotation for lambda1 in degree
lambda2 = 4000 // Wavelength of light in angstrom
theta2 = 50 // Optical rotation for lambda2 in degree
t = 1 // Thickness of plate in mm
theta_max = 90 // Angle between prisms for maximum trnsition in degree
// Sample Problem 18 on page no. 219
printf("\n # PROBLEM 18 # \n")

printf("\n Standard formula used \n theta = a + b/(lambda)^2. \n")
b = (theta2-theta1)*(lambda1*1e-10*lambda2*1e-10)^2/((lambda1*1e-10)^2-(lambda2*1e-10)^2) // Calculation for constant b
a = theta1 -b/(lambda1*1e-10)^2 // Calculation of constant a

t_min = t* theta_max/theta1 // calculation of thickness of material for maximum thickness in mm
printf("\n Contents are as : \n a = %f deg/mm \n b = %e deg/mm angestrom^2 \n Thickness of plate required is %dmm.",a,b*1e10^2,t_min)

