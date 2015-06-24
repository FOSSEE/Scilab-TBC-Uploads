clear
clc
//to find mass of Sun and mass of Jupiter

// GIVEN:

//orbital radius of earth
re = 1.50e11//in m
//period of revolution for earth
Te = 3.15e7//in seconds
//orbital radius of Moon
rm = 4.22e8//in m
//period of revolution for Moon
Tm = 1.53e5//in seconds
//Gravitational constant
G = 6.67e-11//in N.m^2/Kg^2

// SOLUTION:
//applying Kepler's law of peroids
//mass of Sun using Earth's orbital motion
M = (4*(%pi^2)*(re^3))/(G*(Te^2))//in Kg
//mass of Jupiter using Moon's orbital motion
M_ = (4*(%pi^2)*(rm^3))/(G*(Tm^2))//in Kg

printf ("\n\n Mass of Sun using Earth orbital motion M = \n\n %.2e Kg",M)
printf ("\n\n Mass of Jupiter using Moon orbital motion M = \n\n %.2e Kg",M_)
