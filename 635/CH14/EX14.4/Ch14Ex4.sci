// Scilab Code Ex14.4 Calculating electric polarizability of Oxygen atom: Page-465 (2010)
e = 1.602e-019;    // Charge on an electron, coulomb
p = 0.5e-022;    // Dipole moment of oxygen atom, C-m
d = 4e-017;    // Distnace of the centre of negative charge cloud from the nucleus, m
epsilon_0 = 8.85e-012;    // Electrical permittivity of free space, coulomb square per newton per metre
// In equilibrium, Coulomb interaction = Lorentz force
// i.e.    8*e*E = (8*e)*(8*e)/(4*%pi*epsilon_0*d^2)
// Solving for E
E = 8*e/(4*%pi*epsilon_0*d^2);    // The strength of local electric field, volt per metre
// As p = alpha*E, solving for alpha
disp(E);
alpha = p/E;    // Atomic polarizability of oxygen, farad-metre square
printf("\nThe atomic polarizability of oxygen = %3.1e farad-metre square", alpha);
// Result 
// The atomic polarizability of oxygen = 6.9e-048 farad-metre square 

