//=======================================================================
// chpter 3 example 12


clc;
clear;


//input data
 u            = 0.126;              //permiability in N/A^2
 u0           = 4*%pi*10^-7;
 
//calculation
 ur             = u/u0
 sighe         = ur-1;           //magnetic susceptability

//result
 mprintf('relative permiability =%3.5e\n',sighe);
 mprintf(' Note:Calculation mistake in textbook in calculating sighe by taking ur as 10^5 instead of 100318.4')
 
 //======================================================================
 
 
