//===========================================================================
//chapter 3 example 2

clc;clear all;


//variable declaration
Am      = 205.3*10**-6;                //measured value in Ω
A       = 201.4*10**-6;                //True value in Ω

//calculations
e0      = Am-A;                 //absolute error in Ω
r       = (e0/(A))*100;          //relative error in %

//result
mprintf("abslotue error = %3.2e F ",e0);
mprintf("\nrelative error = %3.2f percentage",r);
