//==========================================================================================
// chapter 6 example 10
clc;
clear;


//input data
 l         = 60;                //length in m
 r2        = 38/2;             // radius of outer cylinder in m
 r1        = 18/2;             //radius of inner cylinder in m
 p         = 8000;            //specific resistance in ohm-m

//calculation
 R  = (p/(2*%pi*l))*log(r2/r1);     //insulation resistance of liquid resistor  in ohm

//result
mprintf('insulation resistance=%3.0f ohm\n',R);

//==========================================================================================
