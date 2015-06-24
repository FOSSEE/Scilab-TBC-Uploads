//==============================================================================================================
// chapter 3 example 18


clc;
clear;

//input data
 A          = 6*10^-4;               //area in m^2
 l          = 0.5;                  //length in m
 u          = 65*10^-4;             //permiability in H/m
 phi        = 4*10^-5;              // magnetic flux in Wb


//calculation
 B          = phi/A;
 H          = B/u;
 N          = H*l;
 
//result
 mprintf('number of turns =%1f\n',N);
 mprintf(' Note: calculation mistake in textbook in calculattig H by taking B value as 0.06 instead of 0.0666');
 
//=====================================================================================================================
