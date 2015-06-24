//==========================================================================================================
// chpter 3 example 14


clc;
clear;

//input data
 phi         = 2*10^-5;          //magnetic flux in Wb/m^2
 H          = 2*10^3;              //in A/m
 A          = 0.2*10^-4;        //area  in m^2

 
 
//calculation
 u0         = 4*%pi*10^-7;
 B      = phi/A;                //magnetic flux density in Wb/m^2
 u      = B/H;                  //permiability in /A^2
 sighem = (u/u0)-1;
///result
 mprintf('permiability =%3.2e.N/A^2\n',u);
 mprintf('susceptability =%4f\n',sighem);
 mprintf('Note:answer of permiability is wrong in textbook\n');
 mprintf(' Note: calcuation mistake in textbook in sighem');


//===============================================================================================================
