//=========================================================================
// chaoter 4 example 7
clc;
clear;


//input data
 alpha       = 0.18*10^-40;      //polarisability of He in F *m^2
 E           = 3*10^5;               // constant in V/m
 N           = 2.6*10^25;            //number of atoms in per m^3
 e           = 1.6*10^-19;
 
 
//formula
//P=N*p
//charge of He=2*electron charge
//p=2(e*d)
//calculation
 P      = N*alpha*E;            //in coul/m^2
 p      = P/N;                  //polarisation of He in coul.m
 d      = p/(2*e);              //separation between charges in m
 
 
//result 
 mprintf('separation=%3.2e.m\n',d);

//=======================================================================
