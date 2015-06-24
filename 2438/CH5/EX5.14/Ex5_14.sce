//=============================================================================================
// chapter 5 example 14

clc;
clear;


//input data 
 eF     = 4.27;             // fermi energy in eV
 m      = 9.11*10^-31;      // mass of electron in kg
 h      = 6.63*10^-34;      // planck's constant in J.s


//formula
//x= N/V
//calculation
 eF1    = eF*1.6*10^-19;                          //fermi energy in eV                
 x      = (((2*m*eF1)/(h^2))^(3/2))*((8*%pi)/3);    //number of electrons per unit volume


//result
 mprintf('number of electrons per unit volume =%4.0e./m^3\n',x);
 
//=========================================================================================
