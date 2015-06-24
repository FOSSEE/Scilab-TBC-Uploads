//==============================================================================
// chapter 4 example 6

clc;
clear;


//input data
 er0  = 5.6;      //static dielectric cnstant of NaCl 
 n   = 1.5;          //optical index of refraction
 

//calculation
 er = er0-n^2;
 d  = (er/er0*100);
 
//result 
 mprintf('percentage contribution from ionic polaristion=%3.2f percent\n',d);

//===============================================================================
