//Chapter-14, Example 14.4, Page 458
//=============================================================================
clc
clear
//INPUT DATA
A=10;//gain of inverting amplifier
f=40*10^3;//frequency in hz
SR=0.5;//slewrate in V/us----->SR=(2*%pi*f*Vm)/(10^6)
//CALCULATIONS
Vm=(SR*10^6)/(2*%pi*f);//maximum output voltage in V peak
Vm=2*Vm;//maximum output voltage in V peak to peak
Vid=Vm/A;//maximum peak-to-peak input voltage for undistorted output 
mprintf("Thus maximum peak-to-peak input voltage for undistorted output is %1.3f V peak-to-peak",Vid);
//=================================END OF PROGRAM=======================================================================================================
