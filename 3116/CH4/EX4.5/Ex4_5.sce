clc
// given that
r_fe2 = 0.077 // radius of Iron ion in nm
r_o2 = 0.14 // radius of oxygen ion in nm
r_ratio = r_fe2 /r_o2 // cation - anion radius ratio for FeO
printf("Example 4.5\n")
if r_ratio > 0.414 & r_ratio < 0.732 then
    printf("\n  As ratio lies between 0.414 and 0.732 and coordination number 6 \n so it is of AX crystal structure.")
end

// coordination number 6 is taken from table
