// Exa 6.4

clc;
clear;

// Given
// Referring Fig 6.42 to get expression for unknowns Rs and Ls


// Solution

printf('It is a bridged-T network. At balance,Z1+Z3+ Z1*Z3/Z2 = 0 \n ');
printf('Z1 = 1/jwC \n ');
printf('Z3 = 1/jwC \n ');
printf('Z2 = R \n ');
printf('Z4 = Rs+jwLs \n ');

printf('substituting these values in the equation, equating real and imagnary parts, and simplifying,\n ');

printf('1/jwC + 1/jwC - 1/(w^2*C^2*R)+Rs+jwLs = 0 \n ');
printf('Therefore \n ');
printf('Rs = 1/(w^2*C^2*R) \n ');
printf('wLs = 2/wc \n ');
