 
clc 
//Given that
p = 3.8e26 // power radiated by moon in watt
d_sun = 1.44e11 // Distance between sun and earth in meter
d_moon = 3e8 //Distance between moon and earth in meter
epsilon_0 = 8.854e-12 // Permittivity of free space
mu_0 = 4*%pi*1e-7 // Permeability of free space
printf("Example 7.12")
s = p/(4*%pi*d_sun^2)// Calculation of solar energy received during solar eclipse in watt /m^2
S = s*60/(4.2*1e4) // Unit conversion

printf("\n Solar energy received during solar eclipse is %f Cal per min per m^2 \n\n\n",S)
// Ansewr in book is 2.1 cal per min per m^2
