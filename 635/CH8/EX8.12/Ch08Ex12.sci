// Scilab code Ex8.12: Reciprocal lattice parameters from 2-D direct lattice parameters Page 277 (2010)
a = 3e-010;    // First lattice parameter of direct lattice
b = 5e-010;    // Second lattice parameter of direct lattice
theta = 60;    // Angle between two lattice vectors of the direct lattice
// if a_prime and b_prime are the lattice vectors for the reciprocal lattice, then
// a_prime*a = 2*%pi and a_prime*b = 0 
// Similarly, b_prime*b = 2*%pi and b_prime*a = 0
// Solving for a_prime and b_prime, we have
a_prime = 2*%pi/(a*cosd(90-theta)); // Lattice vector for reciprocal lattice, per metre
b_prime = 2*%pi/(b*cosd(90-theta)); // Lattice vector for reciprocal lattice, per metre
printf("\nThe reciprocal lattice vectors are:\n a_prime = %5.2f per angstrom and b_prime = %5.2f per angstrom", a_prime*1e-010, b_prime*1e-010);
// Result
// The reciprocal lattice vectors are:
// a_prime =  2.42 per angstrom and b_prime =  1.45 per angstrom