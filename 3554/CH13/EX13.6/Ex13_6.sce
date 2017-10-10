// Exa 13.6

clc;
clear all;

// Given data

K=0.32; // Coupling co efficient
Op=1;// Output in oz.in.

// Solution

// 1 oz.in.= 1 oz.in. * (1 ft/12 in.) * (1 lb/16 oz) * (1.3561/1 ft lb) = 7.06*10^-3 J ;

Elec_mech= 7.06*10^-3; // Electrical energy converted to mechanical energy(J)
Ee=Elec_mech/K; // Applied Electrical energy
printf(' The electrical energy of %.2f mJ must be applied \n',Ee*10^3);
// The answer mentioned in the book is incorrect
