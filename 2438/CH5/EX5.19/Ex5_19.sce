//=================================================================================
// chapter 5 example 19

clc;
clear;

//input data
 m     = 9.1*10^-31;       //mass of electron in kg
 h     = 6.62*10^-34;      //planck's constant in (m^2)*kg/s


//formula
//x=N/V
 x      = 2.5*10^28;

//calculation
 EF       = ((h^2)/(8*(%pi^2)*m))*((3*(%pi^2)*x)^(2/3));                    //fermi energy in J
 EF1      = EF/(1.6*10^-19);                                 //fermi energy in eV
 vF       = (h/(2*m*%pi))*((3*(%pi^2)*x)^(1/3));            //fermi velocity in m/s


//result
 mprintf('energy=%3.2e.eV\n',EF1);
 mprintf(' speed= =%3.2e.m/s\n',vF);

//================================================================================
