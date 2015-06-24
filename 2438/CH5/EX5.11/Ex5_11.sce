//==========================================================================
// chapter 5 example 11

clc;
clear;

//input data
 N         =6.02*10^23;            //avagadro number in atoms /mole
 h        = 6.63*10^-34;           //planck's constant in joule-s
 m        = 9.11*10^-31;          //mass in kg
 M        = 23;                  //atomic weight in grams /mole
 p        = 0.971;              //density in gram/cm^3


//formula 
//x=N/V=(N*p)/M
//calculation
 x       = (N*p)/M;
 x1      = x*10^6;
 eF      = (((h^2)/(2*m)))*(((3*x1)/(8*%pi))^(2/3));       //Fermi energy
 eF1     = (eF)/(1.6*10^-19);
//result
 mprintf('fermi energy=%3.2f.eV\n',eF1);
 
 //=============================================================================
 
