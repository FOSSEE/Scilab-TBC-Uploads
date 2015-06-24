//=======================================================================
// chapter 3 example 11


clc;
clear;


//input data
 sighem        = 0.084;             //magnetic susceptability
 u0            = 4*%pi*10^-7;


//calculation
ur             = 1+(sighem);
u              = u0*ur;

//result
 mprintf('permieability =%3.6f\n',ur);
 mprintf('relative permiability =%3.4e.N/A^2\n',u);
 
 //=======================================================================
