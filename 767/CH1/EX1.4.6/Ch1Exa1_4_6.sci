// Scilab code Exa1.4.6 : Determination of distance of closest approach for alpha-particle : Page 35 (2011)
E = 5.48*1.6e-013; // Energy of alpha particle, J
e = 1.6e-019; // Charge of an electron, C
Z = 79; // Mas number of Au nucleus, 
epsilon_0 = 8.85e-012; // Permittivity of free space, 
D = (2*Z*e^2)/(4*%pi*epsilon_0*E); // Distance of closest approach, m
printf("\nThe distance of closest appproach of alpha particle : %4.2e m", D)

// Result
// The distance of closest appproach of alpha particle : 4.15e-014 m