
clc 
//Given that
lambda = 2e-12 // de Broglie wavelength of an electron in m
c = 3e8 // Speed of light in m/s
m = 9.1e-31 // Mass of electron in Kg
h = 6.63e-34 // Plank constant
printf("Example 1.33")
E = h*c/(lambda*1.6e-19) // Energy due to momentum
E_rest = m*c^2/(1.6e-19) // Calculation of rest mass energy
E_total = sqrt(E^2+E_rest^2) // Total energy in eV
KE = E_total - E_rest // Kinetic energy
v_g = c*sqrt(1-(E_rest/E_total)^2) // Group velocity
v_p  = c^2/v_g // Phase velocity

printf("\n Kinetic energy of electron is %f KeV.",KE/1000)
printf("\n Group velocity of de Broglie waves is %fc m/s and\n phase velocity is %fc m/s.\n\n\n",v_g/c,v_p/c)
// Answer in book is v_g = 0.6035c & v_p = 1.657c
