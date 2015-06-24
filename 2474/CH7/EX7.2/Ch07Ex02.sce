// Scilab code Ex7.2: Pg.292 (2008)
clc; clear;
j_1 = 0.5;    // First angular momentum
j_2 = 0.5;    // Second angular momentum
j = j_1 + j_2;    // Total angular momentum in parallel state
printf("\nTotal angular momentum in parallel state = %1d", j);
j = j_1 - j_2;    // Total angular momentum in antiparallel state
printf("\nTotal angular momentum in anti-parallel state = %1d", j);

// Result
// Total angular momentum in parallel state = 1
// Total angular momentum in anti-parallel state = 0