
mu_not=4D-7*%pi
//calculating flux density at centre of coil B=mu_not*I/(2*R)
I=50
R=4D-2
B=mu_not*I/(2*R)
mprintf("Flux density at centre of coil=%f*10^-6 Wb/m^2(Tesla)\n", B*10^6)
//calculating flux density perpendicular to plane of coil at a distance of 10 cm from it
z=10D-2
B=mu_not*I*R^2/(2*(R^2+z^2)^1.5)
mprintf("Flux density perpendicular to plane of coil at a distance of 10 cm from it=%f*10^-6 Wb/m^2(Tesla)", B*10^6)
