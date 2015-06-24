// Scilab code Ex1.13 : : P.No.55 (2011)
// We have to determine for mass numbers 80 and 97.
clc; clear;
A = [80, 97];   // Matrix of Mass numbers
Element = ["Br","Mo"];  // Matrix of elements
M_n = 939.6;    // Mass of neutron, MeV
M_H = 938.8;    // Mass of proton, MeV
a_v = 14.0;     // Volume energy, MeV
a_s = 13.0;     // Surface energy, MeV
a_c = 0.583;    // Coulomb energy, MeV
a_a = 19.3;     // Asymmetry energy, MeV
a_p = 33.5;     // Pairing energy, MeV
for i = 1:1:2
Z = poly(0,'Z');        // Declare the polynomial variable
M_AZ = M_n*(A(i)-Z)+M_H*Z-a_v*A(i)+a_s*A(i)^(2/3)+a_c*Z*(Z-1)*A(i)^(-1/3)+a_a*(A(i)-2*Z)^2/A(i)+a_p*A(i)^(-3/4); // Mass of the nuclide, MeV/c^2
Z = roots(derivat(M_AZ));
printf("\nFor A = %d, the most stable isobar is %s(%d,%d)", A(i), Element(i), Z, A(i));    
end

// Result
// For A = 80, the most stable isobar is Br(35,80)
// For A = 97, the most stable isobar is Mo(42,97) 
