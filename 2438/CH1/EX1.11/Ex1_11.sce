//======================================================================
// chapter 1 example 11
clc;
clear;

//input data

 d     = 1.41;          //lattice constant in Å
 theta  = 8.8;          // angle in degrees
 n      = 1;

//calculation

 lamda  = (2*d*sin(theta*%pi/180))/n;


//result
mprintf('wavelength=%3.2f Å\n',lamda);

//======================================================================
