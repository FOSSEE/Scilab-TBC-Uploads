// Scilab code Exa 3.3.2 To calculate mass number of Pb isotope and energy emitted : Page no : 132 (2011)
M_U = 238.050786; // Atomic mass of U-238, amu
M_Pb = 205.9744550; // Atomic mass of Pb-205, amu
M_He = 4.002603; // Atomic mass of He-4, amu
M_e = 5.486e-04; // Atomic mass of electron, amu
M = M_Pb+(8*M_He)+(6*M_e); // Total mass of products, amu
D = M_U-M; // Decrease in mass, amu
E = D*931.47; // Energy evolved, MeV
printf("\nTotal mass of products  = %1.7f amu \n Decrease in mass   =  %9.7f amu and \n Energy evolved   = %4.1f MeV", M, D,  E)
// Result
//     Total mass of products  = 237.9985706 amu 
//  Decrease in mass   =  0.0522154 amu and 
//   Energy evolved   = 48.6 MeV