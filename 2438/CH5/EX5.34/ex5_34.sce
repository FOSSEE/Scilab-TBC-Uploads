//======================================================================================
//chapter 5 example 34

clc;
clear;


//input data
 d           = 10^-3;           //diameter in m
 Bc          = 0.0548;          // Bc in T
 
 
 //calculation
 u0          = 4*%pi*10^-7;         //permiability m^2
 r           = d/2;                   //radius in m
 Ic          = (2*%pi*r*Bc)/u0;       //current in Amp

//result
mprintf('current =%3.2d Amp\n',Ic);

//=========================================================================================
