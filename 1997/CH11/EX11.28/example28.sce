//Chapter-11 example 28
//=============================================================================
clc;
clear;
//input data
BW = 100//band width in Mhz
PW = 4;//pulse width in us
//Calculations
CPW  = 1/BW;//compressed pulse width in us
CR   = PW/CPW;//compression ratio

//output
mprintf('compressed pulse width is %g us\n compression ratio is %g\n',CPW,CR);
mprintf(' Note: In textbook compression ratio is wrongly printed as 40');

//====================end of the program=======================================
