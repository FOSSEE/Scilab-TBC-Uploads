// Scilab Code Ex8.4 Calculation of atomic number of an unknown element Page-255 (2010)
lambda_Pt = 1.321e-010;    // Wavelength of L_alpha line of Pt, m
Z_Pt = 78;    // Atomic number of platinum
b = 7.4;    // Constant
lambda_x = 4.174e-010;    // Wavelength of unknown element, m
// We have f = [a*(Z-b)]^2        (Moseley's law)
// As f_Pt = c/lambda_Pt = [a*(Z_Pt-b)]^2 
// Similarly f_x = c/lambda_x = [a*(Z_x-b)]^2 
// Dividing f_Pt by f_x and solving for x
Z_x = b + sqrt(lambda_Pt/lambda_x)*(Z_Pt-b);    // Atomic number of unknown element 
printf("\nThe atomic number of unknown element = %4.1f", Z_x);
// Result
// The atomic number of unknown element = 47.1  