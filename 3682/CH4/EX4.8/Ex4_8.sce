// Exa 4.8

clc;
clear;

// Given data

// Referring Fig. (4.28) -Non- inverting terminal integrator

// Solution

printf(' The voltage at the (+) input terminal of the op-amp due to potential divider is,\n');
printf(' V(+) =   1/ s*C    *  Vi(s)\n');
printf('        ----------\n');
printf('         R+ 1/ s*C \n\n');
printf(' The output voltage Vo(s) fot the non-inverting amplifier is - \n');
printf(' Vo(s) = (1 + 1/(s*C*R))*V(+) = Vi(s) / (s*R*C)).\n\n');
printf(' Hence in time domain, we get, vo = (1/(R*C))  ∫ vi dt .\n');
printf(' Hence proved. \n');
