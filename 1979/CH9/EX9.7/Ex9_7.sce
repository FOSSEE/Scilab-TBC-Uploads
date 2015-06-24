//chapter-9 page 412 example 9.7
//==============================================================================
clc;
clear;

//For a Gunn Diode
L=5*10^(-4);//Drift Length in cm
Vg=3300;//Voltage gradient in V/cm [Vg>3.3 kV/cm]
 
//CALCULATION
Vmin=Vg*L;//Minimum Voltage needed to initiate Gunn effect in volts

//OUTPUT
mprintf('\nMinimum Voltage needed to initiate Gunn effect is Vmin=%1.2f volts',Vmin);

//=========================END OF PROGRAM===============================

