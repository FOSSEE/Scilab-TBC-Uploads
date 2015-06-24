clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-2.3   Page 29 ')    //Example 2.3

T=300*12;               //[in*lb] Engine torque 
d=8;                    //[in] Crankshaft effective diameter

F=T/(d/2);              //[lb] Force exerted by piston

A=%pi*(2^2)/4;          //[in^2] Area of cross section of piston
P=F/A;                  //[lb/in^2] Pressure in cylinder

mprintf('\n\n Pressure inside cylinder %f lb/in^2',P);
