
clc 
//Given that
E = 7.9e10 // Young’s modulus in N/m^2
rho = 2650 // Density in Kg/m^3
t = 0.003 // Thickness of quartz crystal in m
printf("Example 6.1\n")
v = sqrt(E/rho)// Calculation of velocity 
lambda = 2*t // Calculation of fundamental wavelength
nu = v/lambda // Calculation of fundamental frequency
printf("Fundamental frequency is %e Hz.\n\n\n",nu)
