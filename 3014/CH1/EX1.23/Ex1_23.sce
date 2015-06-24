clc 
//Given that
E = 200 // energy of electrons in eV
x = 20 // distance of screen in cm
D = 2 // diameter of ring in cm
h = 6.62e-34 // Plank constant
m = 9.1e-31 // Mass of electron in kg
printf("Example 1.23")
lambda = h/sqrt(2*m*E*1.6e-19) // Calculation of wavelength
theta = atan(D/(2*x))
d = lambda/(2*sin(theta))// calculation of interatomic spacing of crystal
printf("\n Interatomic spacing of crystal is %f angstrom.\n\n\n",d*1e10)
