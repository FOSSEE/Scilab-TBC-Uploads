// Scilab code Exa9.4 : : Page-391 (2011)
clc; clear;
A = 77;        // Mass number of the isotopes
Z = round (A/((0.015*A^(2/3))+2));    // Atomic number of stable isotope
// Check the stability !!!!!
  if Z == 34 then
    printf("\nSe( %d,%d) is stable \nAs (%d,%d) and Br(%d,%d) are unstable", Z, A, Z-1, A, Z+1, A);
  elseif Z == 33 then
    printf("\nAs( %d,%d) is stable \nSe (%d,%d) and Br(%d,%d) are unstable", Z, A, Z+1, A, Z+2, A);
   elseif Z == 35 then
    printf("\nBr( %d,%d) is stable \nSe (%d,%d) and As(%d,%d) are unstable",Z,A,Z-2,A,Z-1,A);      
end

// Result
// Se( 34,77) is stable 
// As (33,77) and Br(35,77) are unstable 