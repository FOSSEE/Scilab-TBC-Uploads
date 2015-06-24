// Scilab Code Ex4.13: Page-125 (2006)
clc; clear;
A = cell(4,4);      // Declare a 4X4 cell
A(1,1).entries = 'Mg';  
A(1,2).entries = 2.54e-05;  
A(1,3).entries = 1.5;  
A(1,4).entries = 2.32e+02;  
A(2,1).entries = 'Cu';  
A(2,2).entries = 6.45e-05;  
A(2,3).entries = 3.85;  
A(2,4).entries = 2.30e+02;  
A(3,1).entries = 'Al';  
A(3,2).entries = 4.0e-05;  
A(3,3).entries = 2.38;
A(3,4).entries = 2.57e+02;  
A(4,1).entries = 'Pt';  
A(4,2).entries = 1.02e-05;  
A(4,3).entries = 0.69;
A(4,4).entries = 2.56e+02;  
T1 = 273;   // First temperature, K
T2 = 373;   // Second temperature, K
printf("\n_________________________________________________________________");
printf("\nMetal     sigma x 1e-05   K(W/cm-K)   Lorentz number             ");
printf("\n          (mho per cm)                (watt-ohm/deg-square)x1e-02")
printf("\n_________________________________________________________________");
for i = 1:1:4
    L1 = A(i,3).entries/(A(i,2).entries*T1); L2 = A(i,4).entries;
    printf("\n%s        %4.2f            %4.2f         %4.2f            %4.2f", A(i,1).entries, A(i,2).entries/1e-05, A(i,3).entries, L1/1e+02, L2/1e+02);
end
printf("\n_________________________________________________________________");

// Result 
// _________________________________________________________________
// Metal     sigma x 1e-05   K(W/cm-K)   Lorentz number             
//           (mho per cm)                (watt-ohm/deg-square)x1e-02
// _________________________________________________________________
// Mg        2.54            1.50         2.16            2.32
// Cu        6.45            3.85         2.19            2.30
// Al        4.00            2.38         2.18            2.57
// Pt        1.02            0.69         2.48            2.56
// _________________________________________________________________ 

