//======================================================================
// chapter 1 example 12

clc;
clear;

//input data
 d         = 2.5;               //spacing in angstroms
 theta     = 9;                        //glancing angle in degrees
 n1        = 1;
 n2        = 2;


//calculation
 lamda      = (2*sin(theta*(%pi/180))*d);
 theta      = asin((2*lamda)/(2*d));

//result
mprintf('wavelength =%3.4fÅ\n',lamda);
mprintf('glancing angle =%3.1f°\n',theta*(180/%pi));

//=======================================================================
