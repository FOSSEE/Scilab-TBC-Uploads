// Scilab Code Ex3.7 : Page:135 (2011) 
clc;clear;
function str = st(val)
    str = emptystr();
    if val == 3 then
        str = 'aaa';
    elseif val == 2 then
        str = 'aa'; 
    elseif val == 1 then
        str = 'a';
    elseif val == 0 then 
        str = '0';           
    end
endfunction

g = 3; // Number of cells in first compartment
n = 3; // Number of bosons
p = 3;
r = 1;   // Index for number of rows
clc;
printf("\nAll possible meaningful arrangements of three particles in three cells are:")
printf("\n__________________________");
printf("\nCell 1    Cell 2    Cell 3");
printf("\n__________________________");
for i = 0:1:g
    for j = 0:1:n
        for k = 0:1:p
            if (i+j+k == 3) then
      printf("\n%4s     %4s      %4s", st(i), st(j), st(k));  
            end
        end
    end
end
printf("\n__________________________");

// Result
// All possible meaningful arrangements of three particles in three cells are:
// __________________________
// Cell 1    Cell 2    Cell 3
// __________________________
//   0        0       aaa
//    0        a        aa
//    0       aa         a
//    0      aaa         0
//    a        0        aa
//    a        a         a
//    a       aa         0
//   aa        0         a
//   aa        a         0
//  aaa        0         0
// __________________________ 
