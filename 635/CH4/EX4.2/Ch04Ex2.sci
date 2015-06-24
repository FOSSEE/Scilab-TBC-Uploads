// Scilab Code Ex4.2 Ionization potentials of hydrogen atom: Page-126 (2010)
Z = 1;    // The atomic number of hydrogen
h = 6.626D-34; // Plank's constant, Js
eps_0 = 8.85D-12;  // Absolute electrical permittivity of free space, coulomb square per newton per metre square
e = 1.602D-19;    // Electronic charge, C
m = 9.1D-31;    // Electronic mass, kg
E = zeros(1, 3); // Initialize three potentials to 0 value in a vector
for n = 1:1:3
    select n
    case 1 then
        state = "First";
    case 2 then
        state = "Second";
    else
        state = "Third";
    end
E(1,n) = -(m*Z^2*e^4)/(8*eps_0^2*n^2*h^2*e);    // Energy of nth bohr orbit, eV
printf("\nThe %s Ionization Potential is : %5.3f eV",state, E(1,n));
end
// Result 
// The First Ionization Potential is : -13.600 eV
// The Second Ionization Potential is : -3.400 eV
// The Third Ionization Potential is : -1.511 eV