// calculate the c/a ratio for an ideally close packed HCP crystal
clc
a = 1 // let
PR = a
printf("\ Example 5.3")
RT = a/sqrt(3)
PT = sqrt(PR^2-RT^2)
c_a = 2*PT/PR
// Calculations are made on the crystal structure drawn in book
printf("\n c/a ratio for an ideally close packed HCP crystal is %0.3f ",c_a)

