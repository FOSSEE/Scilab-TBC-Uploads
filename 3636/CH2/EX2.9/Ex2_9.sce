clear;
clc;
a=8 //number of atoms shared by 8 cells
b=6 //number of atoms shared by 2 cells
c=4 //number of atoms shared by a single cell
L=5.43*10^-8 //Lattice constant in cm

//Calculation
N=(a/8)+(b/2)+c //no. of atoms in each cell
Volume=L^3
Density=8/Volume

mprintf("(a)no. of atoms in each cell= %i\n",N)
mprintf("(b)Density of atoms in silicon= %.0e atoms cm^-3",round(Density))
//The answer provided in the textbook is wrong
