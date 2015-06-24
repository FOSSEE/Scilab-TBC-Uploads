//=======================================================================
// chpter 3 example 19


clc;
clear;

//input data
 A          = 0.2*10^-4;               //area in m^2
 H          = 500;                      //magnetising field in A.m^-1
 phi         = 2.4*10^-5;              // magnetic flux in Wb

 //calculation
 u0         = 4*%pi*10^-7;
 B      = phi/A;                        //magnetic flux density in N*A^-1 *m^-1
 u      = B/H;                          //permiability in N/m
 fm     = (u/u0)-1;                     //susceptability 
 
//result
 mprintf('susceptability =%3.2d\n',fm);

 
//=======================================================================

