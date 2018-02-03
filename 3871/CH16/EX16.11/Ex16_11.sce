//=====================================================================================
//Chapter 16 example 11

clc;clear all;

//variable declaration
y1   = 2;      //positive y- peaks in pattern
y2   = 0.5;    //positive y-peaks in pattern
x1   = 0.5;    //positive x-peaks in pattern
x2   = 0.5;    //positive x-peaks in pattern
F    = 3;       //frequency of horizontal voltage signal in kHz

//calculations
fx   = x1+x2;     //frequency of X
fy    = y1+y2;    //frequency of Y
f     = fy/(fx);
fv    = f*F;       //frequency of vertical voltage signal in kHz

//Result
mprintf("frequency of vertical voltage signal in = %3.1f kHz",fv);

