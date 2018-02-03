//===========================================================================
//chapter 5 example 20
clc;
clear all;

//variable declaration
L   = 170;      //length of the wire in mm
dL     = 0.2;   //increase in length in mm
L1    =100;     //length of the  second wire in mm

//calculations
S       = sqrt((L*dL)/(2));             //Sag in mm
S1       = sqrt((L1*S)/(2));       //Sag in mm
M      = S1/(dL);           //magnification

//result
mprintf("magnification = %3.1f",M);
