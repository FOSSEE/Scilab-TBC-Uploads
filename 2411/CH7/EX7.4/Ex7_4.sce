// Scilab Code Ex7.4: Page-377 (2008)
clc; clear;
function p = find_cell_type(x)
    if x == 1 then
        p = 'simple cubic';
    end    
    if x == 2 then
        p = 'body centered';
    end    
    if x == 4 then 
        p = 'face centered';        
    end
endfunction
M = 130;    // Gram atomic weight of Cs, g/mole
N = 6.023e+023;    // Avogadro's number
rho = 2;    // Density of Cs, g/cc
a = 6e-008;    // Distance between two adjacent atoms in the Cs, cm
m = M/N;    // Mass of each Cs atom, g
x = rho*a^3*N/M;    // Number of Cs atoms in cubic unit cell
c_type = find_cell_type(int(x));    // Call function to determine the type of cell
printf("\nThe cubic unit cell of Cs is %s.", c_type);

// Result
// The cubic unit cell of Cs is body centered. 