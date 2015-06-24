// Scilab Code Ex 1.10 : Page-24 (2006)
clc; clear;
function str = structure(r_ratio)
    if r_ratio > 0.732 then
        str = 'Caesium Chloride';
    else if  r_ratio < 0.732 & r_ratio > 0.414 then
            str = 'Rock Salt';
        else if  r_ratio < 0.414 then
                str = 'Rutile'
             end
        end
    end
endfunction

crystal = cell(6,2);    // Declare cells of 6 rows and 2 columns
crystal(1,1).entries = 'I';
crystal(1,2).entries = 2.19;        // Ionic radius of I, angstrom
crystal(2,1).entries = 'Cl';
crystal(2,2).entries = 1.81;        // Ionic radius of Cl, angstrom
crystal(3,1).entries = 'Na';
crystal(3,2).entries = 0.95;        // Ionic radius of Na, angstrom
crystal(4,1).entries = 'Cs';
crystal(4,2).entries = 1.69;        // Ionic radius of Cs, angstrom
crystal(5,1).entries = 'Mg';
crystal(5,2).entries = 0.99;        // Ionic radius of Mg2+, angstrom
crystal(6,1).entries = 'O';
crystal(6,2).entries = 1.40;        // Ionic radius of O2-, angstrom

printf("\nThe crystal structure of %s%s with radius ratio = %6.4f is %s", crystal(3,1).entries, crystal(1,1).entries, crystal(3,2).entries/crystal(1,2).entries, structure(crystal(3,2).entries/crystal(1,2).entries));

printf("\nThe crystal structure of %s%s with radius ratio = %6.4f is %s", crystal(3,1).entries, crystal(2,1).entries, crystal(3,2).entries/crystal(2,2).entries, structure(crystal(3,2).entries/crystal(2,2).entries));

printf("\nThe crystal structure of %s%s with radius ratio = %6.4f is %s", crystal(4,1).entries, crystal(2,1).entries, crystal(4,2).entries/crystal(2,2).entries, structure(crystal(4,2).entries/crystal(2,2).entries));

printf("\nThe crystal structure of %s%s with radius ratio = %6.4f is %s", crystal(4,1).entries, crystal(1,1).entries, crystal(4,2).entries/crystal(1,2).entries, structure(crystal(4,2).entries/crystal(1,2).entries));

printf("\nThe crystal structure of %s%s with radius ratio = %6.4f is %s", crystal(5,1).entries, crystal(6,1).entries, crystal(5,2).entries/crystal(6,2).entries, structure(crystal(5,2).entries/crystal(2,2).entries));

// Result 
//The crystal structure of NaI with radius ratio = 0.4338 is Rock Salt
//The crystal structure of NaCl with radius ratio = 0.5249 is Rock Salt
//The crystal structure of CsCl with radius ratio = 0.9337 is Caesium Chloride
//The crystal structure of CsI with radius ratio = 0.7717 is Caesium Chloride
//The crystal structure of MgO with radius ratio = 0.7071 is Rock Salt  

