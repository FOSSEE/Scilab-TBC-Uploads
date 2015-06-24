//=======================================================================
//chapter 1 example 14

clc;
clear;

//input data
 lamda      = 1.4*10^-10;              //wavelength in angstroms
 a          = 2*10^-10;                //lattice parameter in angstroms
 h          = 1;                //miller indices
 k          = 1;                //miller indices
 l          = 1;                //miller indices
 n         = 1;
//formula
//2*d*sin(theta)=n*lamda

//calculation

dhkl       = a/sqrt((h^2)+(k^2)+(l^2));         //inter planar spacing
theta      = asin((n*lamda)/(2*dhkl));

//result
mprintf('angle=%3.2f.\n',theta*(180/%pi));

//======================================================================
