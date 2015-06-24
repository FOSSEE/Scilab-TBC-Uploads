//=======================================================================
// chapter 3 example 17


clc;
clear;

//input data
 H          = 5*10^3;            //corecivity in A/m
 l          = 10^-1;                //length in m
 n          = 500;                //number of turns

//calculation
 N      = n/l;                   // number of turns per m
 i      = H/N;                  //current in A
 
//result
 mprintf('current =%1d A\n',i);
 
//======================================================================
 
