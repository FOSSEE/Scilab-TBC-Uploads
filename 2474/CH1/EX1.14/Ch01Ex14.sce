// Scilab code Ex1.14: Pg.47-48 (2008)
clc; clear;
fo = 3;    // Actual frequency of the signal, Hz
Beta = 0.8;    // Boost parameter
// When Homer & Ulysses are receding away from each other
f_ratio_recede = sqrt((1-Beta)/(1+Beta));     // Frequency ratio while approaching
printf("\nHomer receives %g flashes during the first 9 years and Ulysses receives %g flash in his first 3 years!", fo, f_ratio_recede*fo);
// When Homer & Ulysses are approaching towards each other
f_ratio_approach = sqrt((1+Beta)/(1-Beta));     // Frequency ratio while approaching
printf("\nHomer receives %d flashes during the 10th year and Ulysses receives %d flashes during his final 3 years!", fo, f_ratio_approach*fo);

// Result
// Homer receives 3 flashes during the first 9 years and Ulysses receives 1 flash in his first 3 years!
// Homer receives 3 flashes during the 10th year and Ulysses receives 9 flashes during his final 3 years! 