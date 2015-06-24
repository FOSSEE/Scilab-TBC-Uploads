//=============================================================================================
// chapter 5 example 15

clc;
clear;


//input data 
 eF1       = 4.70;             // fermi energy in eV
 eF2       = 2.20;             // fermi energy in eV
 x1        = 4.6*10^28;        // electron density of lithium per m^3


//formula
//N/V = (((2*m*eF1)/(h^2))^(3/2))*((8*%pi)/3);
//N/V = k*(eF^3/2)
//N/V = x
//calculation
 x2      = x1*((eF2/eF1)^(3/2));            //electron density for metal in per m^3


//result
 mprintf('electron density  for a metal =%4.2e per m^3\n',x2);
 
 //==============================================================================================
