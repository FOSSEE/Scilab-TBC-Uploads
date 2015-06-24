//chapter-9 page 411 example 9.2
//==============================================================================
clc;
clear;

L=75*10^(-6);//Device Length in m
V=25;//Voltage Pulse Amplified in V
f=10*10^9;//Operating Frequency in Hz

//CALCULATION
Eth=(V/L)/10^5;//Threshold Electric Field in kV/cm

//OUTPUT
mprintf('\nThreshold Electric Field is Eth=%1.2f kV/cm',Eth);

//=========================END OF PROGRAM===============================

