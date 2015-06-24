// Scilab code Exa9.9 : : Page-393 (2011)
clc; clear;
Z = rand(5,1);
N = rand(5,1);
E = string (rand(5,1));
// Elements allocated
E(1,1) = 'Carbon'
E(2,1) = 'Boron'
E(3,1) = 'Oxygen'
E(4,1) = 'Zinc'
E(5,1) = 'Nitrogen'
Z(1,1) = 6;        // Number of proton in carbon nuclei
Z(2,1) = 5;         // Number of proton in boron nuclei
Z(3,1) = 8;         // Number of proton in oxygen nuclei
Z(4,1) = 30;         // Number of proton in zinc nuclei
Z(5,1) = 7;         // Number of proton in nitrogen nuclei
N(1,1) = 6;        // Mass number of carbon
N(2,1) = 6;         // Mass number of boron
N(3,1) = 9;         // Mass number of oxygen
N(4,1) = 37;         // Mass number of zinc
N(5,1) = 9;         // Mass number of nitrogem
for i = 1:5
    if Z(i,1) == 8  then
            printf("\nThe angular momentum is 5/2 and the parity is +1 for %s ", E(i,1));
    elseif Z(i,1) == 5 then
            printf("\nThe angular momentum is 3/2 and the parity is -1 for %s", E(i,1));
        end
    if Z(i,1) == N(i,1) then
        printf("\nThe angular mometum is 0 and the parity is +1 for %s", E(i,1));
    end
    if N(i,1)-Z(i,1) == 2  then
        printf("\nThe angular momentum is 2 and the parity is -1 for %s", E(i,1));
    end
    if N(i,1)-Z(i,1) == 7 then
        printf("\nThe angular momentum is 5/2 and the parity is -1 for %s", E(i,1));
    end
end

// Result
// The angular mometum is 0 and the parity is +1 for Carbon
// The angular momentum is 3/2 and the parity is -1 for Boron
// The angular momentum is 5/2 and the parity is +1 for Oxygen 
// The angular momentum is 5/2 and the parity is -1 for Zinc
// The angular momentum is 2 and the parity is -1 for Nitrogen 