// Scilab code Ex15.2: Pg 560 (2005)
clc; clear;
// Data for Reaction 1
R1 = cell(6,2);  // Declare a 6X2 cell
R1(1,1).entries = 'p';
R1(2,1).entries = 'n';
R1(3,1).entries = 'p';
R1(4,1).entries = 'p';
R1(5,1).entries = 'n';
R1(6,1).entries = 'p_bar';
R1(1,2).entries = 1;
R1(2,2).entries = 1;
R1(3,2).entries = 1;
R1(4,2).entries = 1;
R1(5,2).entries = 1;
R1(6,2).entries = -1;
// Data for reaction 2
R2 = cell(5,2);  // Declare a 5X2 cell
R2(1,1).entries = 'p';
R2(2,1).entries = 'n';
R2(3,1).entries = 'p';
R2(4,1).entries = 'p';
R2(5,1).entries = 'p_bar';
R2(1,2).entries = 1;
R2(2,2).entries = 1;
R2(3,2).entries = 1;
R2(4,2).entries = 1;
R2(5,2).entries = -1;
// Check baryon number conservation for first reaction
if (R1(1,2).entries+R1(2,2).entries) == (R1(3,2).entries+R1(4,2).entries+R1(5,2).entries+R1(6,2).entries) then
    printf("\nThe reaction %s + %s --> %s + %s + %s + %s can occur (B is conserved)", R1(1,1).entries, R1(2,1).entries, R1(3,1).entries, R1(4,1).entries, R1(5,1).entries, R1(6,1).entries);
else
    printf("\nThe reaction %s + %s --> %s + %s + %s + %s cannot occur (B is not conserved)", R1(1,1).entries, R1(2,1).entries, R1(3,1).entries, R1(4,1).entries, R1(5,1).entries, R1(6,1).entries);
end
// Check baryon number conservation for second reaction
if R2(1,2).entries+R2(2,2).entries == R2(3,2).entries+R2(4,2).entries+R2(5,2).entries then
    printf("\nThe reaction %s + %s --> %s + %s + %s can occur (B is conserved)", R2(1,1).entries, R2(2,1).entries, R2(3,1).entries, R2(4,1).entries, R2(5,1).entries);
else
    printf("\nThe reaction %s + %s --> %s + %s + %s cannot occur (B is not conserved)", R2(1,1).entries, R2(2,1).entries, R2(3,1).entries, R2(4,1).entries, R2(5,1).entries);
end

// Result
// The reaction p + n --> p + p + n + p_bar can occur (B is conserved)
// The reaction p + n --> p + p + p_bar cannot occur (B is not conserved) 
