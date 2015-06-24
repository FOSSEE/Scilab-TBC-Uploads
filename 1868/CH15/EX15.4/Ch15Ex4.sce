// Scilab code Ex15.4: Pg 563 (2005)
clc; clear;
// Data for Reaction 1
R1 = cell(4,2);  // Declare a 4X2 cell
R1(1,1).entries = 'Pi0';
R1(2,1).entries = 'n';
R1(3,1).entries = 'K+';
R1(4,1).entries = 'sigma-';
R1(1,2).entries = 0;    // Strangeness number for Pi0
R1(2,2).entries = 0;    // Strangeness number for n
R1(3,2).entries = 1;    // Strangeness number for K+
R1(4,2).entries = -1;    // Strangeness number for sigma-
// Data for Reaction 2
R2 = cell(4,2);  // Declare a 4X2 cell
R2(1,1).entries = 'Pi-';
R2(2,1).entries = 'p';
R2(3,1).entries = 'Pi-';
R2(4,1).entries = 'sigma+';
R2(1,2).entries = 0;    // Strangeness number for Pi-
R2(2,2).entries = -1;    // Strangeness number for p
R2(3,2).entries = 1;    // Strangeness number for pi-
R2(4,2).entries = 0;    // Strangeness number for sigma+
// Check strangeness number conservation for first reaction
if R1(1,2).entries + R1(2,2).entries == R1(3,2).entries+R1(4,2).entries then
    printf("\nThe reaction %s + %s --> %s + %s can occur (Strangness is conserved)", R1(1,1).entries, R1(2,1).entries, R1(3,1).entries, R1(4,1).entries);
else
    printf("\nThe reaction %s + %s --> %s + %s cannot occur (Strangness is not conserved)", R1(1,1).entries, R1(2,1).entries, R1(3,1).entries, R1(4,1).entries);
end
// Check strangeness number conservation for second reaction
if R2(1,2).entries + R2(2,2).entries == R2(3,2).entries+R2(4,2).entries then
    printf("\nThe reaction %s + %s --> %s + %s can occur (Strangness is conserved)", R2(1,1).entries, R2(2,1).entries, R2(3,1).entries, R2(4,1).entries);
else
    printf("\nThe reaction %s + %s --> %s + %s cannot occur (Strangness is not conserved)", R2(1,1).entries, R2(2,1).entries, R2(3,1).entries, R2(4,1).entries);
end

// Result
// The reaction Pi0 + n --> K+ + sigma- can occur (Strangness is conserved)
// The reaction Pi- + p --> Pi- + sigma+ cannot occur (Strangness is not conserved)
