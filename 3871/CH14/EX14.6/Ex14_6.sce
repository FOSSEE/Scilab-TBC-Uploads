//=====================================================================================
//Chapter 14 example 6

clc;
clear all;

//variable declaration
n   =3;         //number of full digits 
v1  = 1;        //voltage in V
v2      = 10;       //voltage in V
v3      = 5;       //voltage in V
a       = 0.5;      //accuracy of reading in %
r   = 2;        //reading in V

//calculations
R   = 1/(10^n);     //resolution
V1  = R*v1;         //for full scale range of 1V ,the resolution in V
V2  = R*v2;         //for full scale range of 10V ,the resolution in V
v      = v3*R;      //the digit in least significant digit has a value of in V
e       = ((a/100)*r)+v;     //total possible error on in  V

//result
mprintf("for full scale range of 1V ,the resolution = %3.4f V",V1);
mprintf("\nfor full scale range of 10V ,the resolution = %3.4f V",V2);
mprintf("\ntotal possible error = %3.5f V",e);

