// Scilab code Ex11.29: Pg.546 (2008)
clc; clear;
t_half = 4.88e+10;    // Half life time of Rb, y
r = 1/40;    // Ratio of daughter nuclei to parent nuclei
t = t_half/log(2)*log(1 + r)    //  Age of rock, y
age_E = 4.5e+09;    // Age of the Earth, y
printf("\nThe age of the rock = %4.2e y and it is younger than the %3.1e y age of earth",t, age_E);

// Result
// The age of the rock = 1.74e+009 y and it is younger than the 4.5e+009 y age of earth 
// The answer is given wrong in the textbook