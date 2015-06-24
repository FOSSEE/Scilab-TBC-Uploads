//======================================================================================================
// Chapter 8 example 4

clc;
clear;

// variable declaration

mh  = 0.56;             //masses interms of m0
me  = 1.08;             //masses interms of m0
t   = 27;               //temperature in °C
k   = 8.62*10^-5;


// Calculations
T   = t+273;                    //temperature in K
fl  = (3/4)*k*T*log(mh/me);          //position of fermi level in eV

// result
mprintf('The position of Fermi level with respect to middle of the bandgap is %3.1f meV',fl/10^-3)

//==========================================================================================================
