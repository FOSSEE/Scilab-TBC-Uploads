// Chapter 5 Example 16
//==============================================================================
clc;
clear;
// Magnesium has HCP structure
// for HCF(Hexagonal closed packed structure) consider the relation between 'c' and 'a';
// c/a = sqrt(8/3) = 1.6329 
//input data
r   = 0.1605*10^-9;     // radius of magnesium atom in m

// Calculations

a   = 2*r               // lattice constant of HCP
c   = a*sqrt(8/3);      // relation b/w c and a in HCP
V   = (3*3^0.5)*(a*a*c)/2;      //Volume of unit cell in m^3

// Output
mprintf('Volume of the unit cell of magnesium = %3.3e m^3',V);
//==============================================================================

