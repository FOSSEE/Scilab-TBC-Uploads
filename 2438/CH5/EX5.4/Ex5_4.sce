//======================================================================
// chapter 5 example 4

clc;
clear;


//input data
 R        = 0.182;             //resistance in ohm
 l       = 1;                  //length in m
 A       = 0.1*10^-6;         //area in m^2

//formula 
//R=(p*l)/A

//calculation
 p      = (R*A)/l;              //resistivity in ohm m


//result
 mprintf('restivity=%3.2e.ohm m\n',p);

//=======================================================================
 
