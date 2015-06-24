clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-4.1   Page 66 ')
 
D=2;               //[in] Dia. of short column
F=10000;          //[lb] Load applied
L=15;              //[in] Length of column
e=2;               //[in] Offset of load

A=(%pi*D^2)/4;      //[in^2] Area of cross section of column
SA=F/A;             //[lb/in^2] Axial Stress

Z=(%pi*D^3)/32;     //[in^4] Section modulus for bending
M=F*e;              //[lb*in] Bending moment
SB=M/Z;             //[lb/in^2] Bemding stress

S=-SA-SB;           //S=(+-)SA+(+-)SB Max. stress

//The bending stress and axial stress are added on inner side of column 

mprintf('\n\n Maximum stress in column is %f lb/in^2.\n',S)
