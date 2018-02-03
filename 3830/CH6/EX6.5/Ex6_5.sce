// Exa 6.5

clc;
clear;

// Given

// Referring Fig. 6.43


// Solution

printf('This is also a bridged-T network. This circuit is used to compare different coils, Lp and Rp. Using the general equation for a bridged-T netwrok at balance,\n ');

printf('Z1+Z3+ Z1*Z3/Z2+Z4= 0 \n ');
printf('Z1 = 1/jwC \n ');
printf('Z3 = 1/jwC \n ');
printf('Z2 = Rp+ 1/jwLp \n ');
printf('Z4 = R \n ');

printf('substituting these values in the equation, equating real and imagnary parts, and simplifying \n ');

printf('1/jwC + 1/jwC - 1/(w^2*C^2*R)+Rs+jwLs = 0 \n ');
printf('Therefore \n ');
printf('w*Lp = 1/(2*w*C) \n ');
printf('Rp = 1/(R*(w*C)^2) \n ');
