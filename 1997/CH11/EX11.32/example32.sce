//Chapter-11 example 32
//=============================================================================
clc;
clear;
//input data
F1  = 490;//freq shift lower limit in Mhz
F2  = 510;//freq shift upper limit in Mhz

//calculations

SC = (F1+F2)/2;//Spectrum Centre in Mhz
BW = F2-F1;//bandwidth in Mhz
CPW = 1/BW;//compressed bandwidth in us

//Output
mprintf('Spectrum centre is %g MHz\n BandWidth is %g MHz\n Compressed pulse Width is %g us',SC,BW,CPW);

//============end of the program===============================================
