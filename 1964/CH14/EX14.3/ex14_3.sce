//Chapter-14, Example 14.3, Page 458
//=============================================================================
clc
clear
//INPUT DATA
A=50;//gain of inverting amplifier
Vid=20*10^-3;//voltage in V
SR=0.5;//slewrate in V/us----->SR=(2*%pi*f*Vm)/(10^6)
//CALCULATIONS
Vm=A*(Vid);//maximum output voltage in V
fmax=(SR*10^6)/(2*%pi*Vm);//frequency in hz
mprintf("thus maximum frequency of the input for which undistorted output is obtained is %g hz",fmax);
//=================================END OF PROGRAM=======================================================================================================
