//Chapter-1, Example 1.42, Page 50
//=============================================================================
clc;
clear;
//INPUT DATA
VA=0.2;//voltage across ammeter A in Volts
VB=0.3;//voltage across ammeter B in volts
I=20;//total current in A
//CALCULATIONS 
RA=VA/I;//resistance through ammeter A in ohms
RB=VB/I;//resistance through ammeter B in ohms
IA=((RB*I)/(RA+RB));//current through ammeter A in amps
IB=I-IA;//current through ammeter B in amps
//OUTPUT
mprintf("IA=%1.0f Amps \n IB=%d Amps \n ",IA,IB);
 //=================================END OF PROGRAM==============================
