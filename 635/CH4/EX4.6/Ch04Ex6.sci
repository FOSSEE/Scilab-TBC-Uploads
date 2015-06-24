// Scilab Code Ex4.7 Percentage ionic character of a covalent molecule: Page-142 (2010)
x_A = 4.0;    // Electronegativity of fluorine
x_B = 2.1;    // Electronegativity of hydrogen
P = 16*(x_A - x_B) + 3.5*(x_A - x_B)^2; //Percentage ionic character of the covalent bond in HF molecule
printf("\nThe percentage ionic character in HF molecule is %5.2f percent", P);
//Result
// The percentage ionic character in HF molecule is 43.03 percent 