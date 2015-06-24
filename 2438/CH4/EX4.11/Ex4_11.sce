//=========================================================================================
// chapter 4 example 11


clc;
clear;


//input data
 E      = 1.46*10^-10;             //permitivity in c^2*N^-1*m^-2
 E0      = 8.885*10^-12;           // permitivity in c^2*N^-1*m^-2


//calculation
 Er         = E/E0;
 sighe      = E0*(Er-1);         //electrical suseptbility in c^2*N^-1*M^-2
 
 
//result
 mprintf('dielectric constant=%3.2f.\n',Er);
 mprintf('electrical suseptibility=%3.4e.c^2*N^-1*M^-2\n',sighe);

//=========================================================================================
