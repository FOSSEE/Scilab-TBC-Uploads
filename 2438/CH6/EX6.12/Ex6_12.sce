//=============================================================================================
// chapter 6 example 12
clc;
clear;


//input data
 d1 = 0.05;      //inner diametr in m
 d2 = 0.07;      //outer diameter in m 
 l  = 2000;      //length in m
 p  = 6*10^12;    //specific resistance in ohm-m
 

//formula
 r1 = d1/2;      //radius in m
 r2 = d2/2;      //radius in m

//calculation
 R = (p/(2*%pi*l))*(log(r2/r1))       //insulation resistance

//result
 mprintf('insulation resistance =%1e.ohm\n',R);
 mprintf(' Note: calculation mistake in textbook in calculating insulating resistance');

//==========================================================================================
