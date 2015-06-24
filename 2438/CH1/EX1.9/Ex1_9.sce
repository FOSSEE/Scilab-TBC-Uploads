//===============================================================================================
// chapter 1 example 9


clc;
clear;

// Variable Declaration

r       = 0.175*10^-9;              //radius in m
h       = 2;                        //miller indices
k       = 3;                        //miller indices
l       = 1;                        //miller indices

//calculation
 a      = (4*r)/sqrt(2);
 dhkl   = a/sqrt((h^2)+(k^2)+(l^2));
 
 //result
  mprintf('inter planar spacing =%3.2e m\n',dhkl);
  mprintf('Note : calculation mistake in textbook in  calculating dhkl value ');
  
 //=============================================================================================
