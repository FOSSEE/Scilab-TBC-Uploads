// Scilab Code Ex5.1 L-S coupling for two electrons: Pg:145 (2008)
// For 2D(3/2) state
l2 = 1;    // Orbital quantum number for p state
l1 = 1;    // Orbital quantum number for p state
printf("\nThe values of orbital quantum number L, for l1 = %d and l2 = %d are: \n", l1, l2);
for L = l2-l1:1:l2+l1
printf("%d ", L);
end
// Result 
// The values of orbital quantum number L, for l1 = 1 and l2 = 1 are: 
// 0 1 2