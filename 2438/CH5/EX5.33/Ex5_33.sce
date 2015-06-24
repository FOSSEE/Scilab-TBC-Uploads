//======================================================================================
//chapter 5 example 33

clc;
clear;


//input data
 Hc         = 7900;                                 //magnetic field in A/m
 r          = 2.0*10^-3;                            //radius of super condutor in m
 
 
//calculation
 I          = 2*%pi*r*Hc;                          //critical current in A
 
//result
 mprintf('critical current =%4f.A\n',I);
 mprintf('Note: calculation mistake in textbook in calculation of I');

//========================================================================================
