clear all; clc;
disp("Ex 6_3")
// Equilibrium gives:
Cx=600
Cy=200

// At joint A:
disp("At Joint A:")
F_AB=600*5/4
F_AD=750*3/5
printf('\n F_AB = %0.0f N (C)',F_AB)
printf('\n F_AD = %0.0f N (T)\n',F_AD)

// At joint D:
disp("At joint D:")
F_DB=(600-450)*5/3
printf('\n F_DB = %0.0f N (T)',F_DB)
F_DC=250*4/5
printf('\n F_DC = %0.0f N (C)\n',F_DC)

// At joint C:
disp("At joint C:")
F_CB=600
printf('\n F_CB = %0.0f N (C)',F_CB)
