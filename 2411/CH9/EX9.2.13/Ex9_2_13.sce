// Scilab Code Ex9.2.13: Page-418(2008)
clc; clear;
function p = Find(Z, A)
    if Z == 2 & A == 4 then
        p = 'alpha';
    end
    if Z == -1 & A == 0 then
        p = 'beta-';
    end
    if  Z == 1 & A == 0 then
        p = 'beta+';
    end
endfunction   
R1 = cell(4,3);
R2 = cell(4,3);
// Enter data for first cell (Reaction)
R1(1,1).entries = 'Li'; // Element
R1(1,2).entries = 3;   // Atomic number
R1(1,3).entries = 6;    // Mass number
R1(2,1).entries = 'd';
R1(2,2).entries = 1;
R1(2,3).entries = 2;
R1(3,1).entries = 'X';
R1(3,2).entries = 0;
R1(3,3).entries = 0;
R1(4,1).entries = 'He';
R1(4,2).entries = 2;
R1(4,3).entries = 4;
// Enter data for second cell (Reaction)
R2(1,1).entries = "Te";
R2(1,2).entries = 52;
R2(1,3).entries = 122;
R2(2,1).entries = 'X';
R2(2,2).entries = 0;
R2(2,3).entries = 0;
R2(3,1).entries = 'I';
R2(3,2).entries = 53;
R2(3,3).entries = 124;
R2(4,1).entries = 'd';
R2(4,2).entries = 1;
R2(4,3).entries = 2;
R1(3,2).entries = R1(1,2).entries+R1(2,2).entries-R1(4,2).entries
R1(3,3).entries = R1(1,3).entries+R1(2,3).entries-R1(4,3).entries
particle = Find(R1(3,2).entries, R1(3,3).entries);    // Find the unknown particle
printf("\nFor the reaction\n")
            printf("\t%s(%d) + %s(%d) --> %s + %s(%d)\n X must be an %s particle", R1(1,1).entries, R1(1,3).entries, R1(2,1).entries, R1(2,3).entries, R1(3,1).entries, R1(4,1).entries, R1(4,3).entries, particle);
R2(2,2).entries = R2(3,2).entries+R2(4,2).entries-R2(1,2).entries
R2(2,3).entries = R2(3,3).entries+R2(4,3).entries-R2(1,3).entries
particle = Find(R2(2,2).entries, R2(2,3).entries);    // Find the unknown particle
printf("\n\nFor the reaction\n")
            printf("\t%s(%d) + %s --> %s(%d)+%s(%d)\n X must be an %s particle", R2(1,1).entries, R2(1,3).entries, R2(2,1).entries, R2(3,1).entries, R2(3,3).entries, R2(4,1).entries, R2(4,3).entries, particle);
            
// Result
// For the reaction
//	Li(6) + d(2) --> X + He(4)
//  X must be an alpha particle

// For the reaction
// 	Te(122) + X --> I(124)+d(2)
//  X must be an alpha particle 