//============================================================================================
// chapter 5 example 6

clc;
clear;

//input data
 W           = 107.9;               //atomic weight
 p           = 10.5*10^3;           //density in kg/m^3
 sigma       =6.8*10^7;            //conductivity in ohm^-1.m^-1
 e           =1.6*10^-19;          //charge of electron in coulombs
 N           = 6.02*10^26;         //avagadro number in mol^-1
 

//calculation
 n       = (N*p)/W;              //number of atoms per unit volume 
 u      = sigma/(n*e);          //density of electron in m^2.V^-1.s^-1


//result
 mprintf('density=%3.2e.m^2.V^-1.s^-1\n',u);
 
//=============================================================================================
