//===========================================================================
//chapter 1 example 1

clc;
clear all;

//variable declaration
d    =2.4;                //magnitude of output response in mm
R    = 6;                 //magnitude of input in Ω

//calculations
S    = d/(R);        //static sensitivity in mm/Ω
D    = R/(d);        //deflection factor in Ω/mm

//result
mprintf("static sensitivity = %3.2f mm/Ω",S);
mprintf("\n deflection factor = %3.2f Ω/mm",D);

//==========================================================================
