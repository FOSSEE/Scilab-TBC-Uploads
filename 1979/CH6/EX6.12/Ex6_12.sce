//chapter-6 page 244 example 6.12
//==============================================================================
clc;
clear;

x=3.5;//distance between two minimas in cm
y=0.25;//distance between twice minimum power points in cm

//CALCULATION
wg=2*x;//guided wavelength in cm
S=(wg/(y*(%pi)));//Voltage Standing Wave Ratio(VSWR)

//OUTPUT
mprintf('\nVoltage Standing Wave Ratio(VSWR) is S=%1.4f',S);

//=========================END OF PROGRAM===============================


