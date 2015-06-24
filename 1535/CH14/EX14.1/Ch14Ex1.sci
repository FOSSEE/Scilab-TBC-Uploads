// Scilab Code Ex14.1: Spontaneous magnetisation of the substance: Page-306 (2010)
N = 6.023e+023;    // Avogadro's number. per mole
A = 56;    // Atomic weight of the substance, g/mole
d = 7.9;    // Density of the substance, gram per cm cube
m_B = 9.27e-024;    // Bohr's Magneton, joule per tesla
m = 2.2*m_B;    // Magnetic moment of substance, joule per tesla
n = d*N/A*1e+006;    // Number of atoms per unit volume of the substance, per metre cube
M = n*m;    // Spontaneous magnetisation of the substance, ampere per metre
printf("\nThe spontaneous magnetisation of the substance = %4.2e ampere per metre", M);

// Result
// The spontaneous magnetisation of the substance = 1.73e+006 ampere per metre 