//========================================================================================
// chpter 3 example 16


clc;
clear;

//input data
L       = 2.0;                   //length in m
A       = 4*10^-4;               //cross section sq.m
u       = 50*10^-4;             //permiability in H*m^-1
phi       = 4*10^-4;            //magnetic flux in Wb

//calculation
 B      =  phi/A;               //magnetic flux density in Wb/m^2
 NI     = B/u;                  //ampere turn in A/m
 
 //result
 mprintf('ampere turn =%3.2f.A/m\n',NI);
 
 //======================================================================================
