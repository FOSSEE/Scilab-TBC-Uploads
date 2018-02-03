//===========================================================================
//chapter 6 example 12

clc;clear all;

//variable declaration
Rv    = 2400;      //resistance in Ω
L     =0.6;        //instrument inductace in H
f     = 60;       //frequency in Hz

//calculations
XL   = 2*%pi*f*L;           //instrument reactance in Ω
Z    = sqrt((Rv^2)+(XL^2));     //instrument impedance in  Ω
//when the instrument range is extended from 120V to 600V the impedance will have to be made 5 times in order to have the same current 
//math.sqrt((RV**2)+XL^2) = 5*Z
x    = (5*Z)^2;
y    = XL^2;
z    = x-y;
a    = (sqrt(z));
R   = a-Rv;       //series resistance in Ω

//result
mprintf("instrument reactance = %3.1f Ω",XL);
mprintf("\nseries resistance = %3.2f Ω",R);


