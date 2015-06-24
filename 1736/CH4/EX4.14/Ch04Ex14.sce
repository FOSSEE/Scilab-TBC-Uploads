// Scilab Code Ex4.14: Page-125 (2006)
clc; clear;
A = cell(2,2);      // Declare a 2X3 cell
A(1,1).entries = 1.6e+08;  // Electrcal conductivity of Au at 100 K, mho per metre
A(1,2).entries = 2.0e-08;   // Lorentz number of Au at 100 K, volt/K-square
A(2,1).entries = 5.0e+08;  // Electrcal conductivity of Au at 273  K, mho per metre
A(2,2).entries = 2.4e-08;   // Lorentz number of Au at 273 K, volt/K-square
T1 = 100;       // First temperature, K
T2 = 273;       // Second temperature, K

printf("\n___________________________________________________________________________");
printf("\n          T = 100 K                               T = 273 K                ");
printf("\n_________________________________       ___________________________________");
printf("\nElectrical conductivity)  L              Electrical conductivity)  L       ");
printf("\n    mho per metre       V/K-square           mho per metre       V/K-square");
printf("\n___________________________________________________________________________");
K1 = A(1,1).entries*T1*A(1,2).entries; K2 = A(2,1).entries*T2*A(2,2).entries;
    printf("\n%3.1e                  %3.1e       %3.1e                  %3.1e", A(1,1).entries, A(1,2).entries, A(2,1).entries, A(2,2).entries);
    printf("\nK = %3d W/cm-K                           K = %3d W/cm-K", K1, K2);
printf("\n___________________________________________________________________________");

// Result 
// ___________________________________________________________________________
//           T = 100 K                               T = 273 K                
// _________________________________       ___________________________________
// Electrical conductivity)  L              Electrical conductivity)  L       
//     mho per metre       V/K-square           mho per metre       V/K-square
// ___________________________________________________________________________
// 1.6e+008                  2.0e-008       5.0e+008                  2.4e-008
// K = 320 W/cm-K                           K = 3276 W/cm-K
// ___________________________________________________________________________  

