//Chapter-11 example 27
//=============================================================================
clc;
clear;
//input data
PW  = 5;//FM pulse width before compression in us
Fl  = 40;//lower cut off Frequency in Mhz
Fh  = 60;//upper cut off Frequency in Mhz

// Calculations
BW   = Fh-Fl;//bandwidth of signal in Mhz
CPW  = 1/BW;//Compression pulse width in us
CR   = PW/CPW;//compression ratio

//output
mprintf('Compression ratio is %g\n Compression Pulse Width is %g us\n',CR,CPW);
//==============end of the program==============================================
