//Chapter-11 example 29
//=============================================================================
clc;
clear;
//input data
CR = 50;//compression ratio
PW = 2;//pulse width in us
//Calculations
CPW = PW/CR //compression pulse width in us
BW  = 1/CPW //compression band width in Mhz

//output
mprintf('compressed pulse width is %g us\n compression Bandwidth is %g MHz\n',CPW,BW);


//====================end of the program=======================================
