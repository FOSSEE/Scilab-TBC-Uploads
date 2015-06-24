//=======================================================================
// Chapter 1 example 15
clc;
clear;

// input data 
 d     = 3.84 *10^-10;       //spacing between planes in m
 theta     = 45;             //glancing angle in  degrees
 m     = 1.67*10^-27;        //mass ef electron
 h     = 6.62*10^-34;        // planck's constant
 n     = 1;                 //braggg reflextion 
 v     = 5.41*10^-10;
 
//calculation
//lamda = 2*d*(1/sqrt(2));
lamda = h/(m*v);

//result
 mprintf('wavelength of neutron =%3.2e m\n',lamda);
 mprintf(' Note:calculation mistake in text book in calculating wavelength ')
//========================================================================
