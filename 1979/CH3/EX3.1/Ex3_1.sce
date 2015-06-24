//chapter-3 page 47 example 3.1
//=============================================================================
clc;
clear;

Z0=100;//Characteristic Impedance in ohms
S=5;//Voltage Standing Wave Ratio(VSWR)

//CALCULATION
Zm=Z0*S;//Termainating impedance at a max of the voltage standing wave
Zl=Zm;//Loading Impedance

//OUTPUT
mprintf('Terminating impedance at a maximum of the voltage standing wave is Zl= %3.0f ohms',Zl);

//====================END OF PROGRAM========================================
