//=======================================================================
// chapter 3 example 10


clc;
clear;


//input data
 sighem        = 2.1*10^-5;             //magnetic susceptability
 u0            = 4*%pi*10^-7;


//calculation
ur             = 1+(sighem);
u              = u0*ur;

//result
 mprintf('permeability =%3.6f\n',ur);
 mprintf('relative permeability =%3.4e.N/A^2\n',u);
 
 //======================================================================
 
