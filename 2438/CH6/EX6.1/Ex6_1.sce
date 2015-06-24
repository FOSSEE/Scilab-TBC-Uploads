//==============================================================================
// chapter 6 example 1

clc;
clear;

//input data 

 R75    = 57.2;     //resistance at 75 C in ohm
 R25    = 55;       //resistance at 25 C in ohm
 t1     = 25;       //temperature in C
 t2     = 75        // temperature in C

//formula
//Rt = R0*(1+(alpha*t))
//calculation
 alpha  = (R25-R75)/((25*R75)-(75*R25));        //temperature cofficient


//result
 mprintf('temperature coefficient =%3.5f.K^-1',alpha);

//=====================================================================================
