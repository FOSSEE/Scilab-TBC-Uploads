clc;clear;
//Example 17.1
//calculation of probability

//given values
E=.01;//energy difference in eV
kT=.026;//temperture equivalent at room temp in e

//calculation
P=1/(1+(%e^(E/kT)));

disp(P,'interatomic spacing  is');
