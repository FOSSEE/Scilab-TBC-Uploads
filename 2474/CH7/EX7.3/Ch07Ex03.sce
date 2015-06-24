// Scilab code Ex7.3: Pg.292 (2008)
clc; clear;
l_1 = 2;   // Orbital quantum number
l_2 = 3;    // Orbital quantum number
printf("\nThe possible values of l are:");
for l = (l_2-l_1):1:(l_1 + l_2)
    printf(" %d ", l);
end;

// Result
// The possible values of l are: 1  2  3  4  5  