// Scilab Code Ex1.4 : Page-17 (2006)
clc; clear;
c_by_a_ratio = 1.633;   // Ideal c/a ratio
A = cell(2,4);  // Declare a cell
// Assign values to the elements of the cell from the table
A(1,1).entries = 'Mg';
A(2,1).entries = 'Cd';
A(1,2).entries = 5.21;
A(2,2).entries = 5.62;
A(1,3).entries = 3.21;
A(2,3).entries = 2.98;
A(1,4).entries = A(1,2).entries/A(1,3).entries;
A(2,4).entries = A(2,2).entries/A(2,3).entries;
if (A(1,4).entries - c_by_a_ratio) < 0.01 then
    printf("\n%s satisfies ideal c/a ratio and %s has large deviation from this value.", A(1,1).entries, A(2,1).entries);
else if (A(1,4).entries - c_by_a_ratio) < 0.01 then
    printf("\n%s satisfies ideal c/a ratio and %s has large deviation from this value.", A(2,1).entries, A(1,1).entries);       
    end
end

// Result 
// Mg satisfies ideal c/a ratio and Cd has large deviation from this value. 
