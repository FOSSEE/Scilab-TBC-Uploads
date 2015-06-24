// Scilab Code Ex2.8 : Page-69 (2006)
clc; clear;
A = cell(2,3);   // Declare a cell of 3X2
A(1,1).entries = 'GaAs';    // First compound name
A(1,2).entries = 4.3;       // Homopolar gap of first compound, eV
A(1,3).entries = 2.90;      // Ionic gap of first compound, eV
A(2,1).entries = 'CdTe';    // Second compound name
A(2,2).entries = 3.08;       // Homopolar gap of second compound, eV
A(2,3).entries = 4.90;      // Ionic gap of second compound, eV
printf("\nThe fractional ionicity of the compounds are given in the last column of the following table:");
printf("\nCompound      Eh      C       fi");
for i = 1:1:2
printf("\n%s          %3.1f     %4.2f    %5.3f", A(i,1).entries, A(i,2).entries, A(i,3).entries, A(i,3).entries^2/(A(i,2).entries^2+A(i,3).entries^2));  // Philips and Vanvechten model of fractional ionicity 
end

// Result 
// The fractional ionicity of the compounds are given in the last column of the following table:
// Compound      Eh      C       fi
// GaAs          4.3     2.90    0.313
// sCdTe          3.1     4.90    0.717 
