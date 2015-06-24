// Scilab Code Ex4.16a: Page-143 (2006)
clc; clear;
A = cell(4,2);  // Declare a 3X2 cell
A(1,1).entries = 'Li';      // 
A(1,2).entries = -0.4039;   // Energy of outermost atomic orbital of Li, Rydberg unit
A(2,1).entries = 'Na';      // 
A(2,2).entries = -0.3777;   // Energy of outermost atomic orbital of Na, Rydberg unit
A(3,1).entries = 'F';      // 
A(3,2).entries = -1.2502;   // Energy of outermost atomic orbital of F, Rydberg unit
A(4,1).entries = 'Cl';      // 
A(4,2).entries = -0.9067;   // Energy of outermost atomic orbital of Cl, Rydberg unit
cf = 13.6;  // Conversion factor for Rydberg to eV
printf("\n________________________________________");
printf("\nAtom                          Energy gap");
printf("\n%s%s                          %5.2f eV", A(2,1).entries, A(4,1).entries, (A(2,2).entries-A(4,2).entries)*cf);
printf("\n%s%s                            %5.2f eV", A(2,1).entries, A(3,1).entries, (A(2,2).entries-A(3,2).entries)*cf);
printf("\n%s%s                            %5.2f eV", A(1,1).entries, A(3,1).entries, (A(1,2).entries-A(3,2).entries)*cf);
printf("\n________________________________________");

// Result 
// ________________________________________
// Atom                          Energy gap
// NaCl                           7.19 eV
// NaF                            11.87 eV
// LiF                            11.51 eV
// ________________________________________ 
