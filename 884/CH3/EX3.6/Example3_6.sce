// Computation of moles from mass of a compound

clear;
clc;

printf("\t Example 3.6\n");

Mass=6.07;//mass of CH4, g
MassC=12.01;//mol. mass of C, amu
MassH=1.008;//mol. mass of H, amu
MassCH4=MassC+4*MassH;//mol. mass of CH4, amu

Moles=Mass/MassCH4;//no. of moles of CH4

printf("\t the no. of moles of CH4 is : %4.3f mol\n",Moles);

//End
