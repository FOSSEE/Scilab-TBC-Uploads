//chapter-10 page 488 example 10.7
//==============================================================================
clc;
clear;

Tant=25;//effective noise temperature in K
Tr=75;//receiver noise temperature in K
GdB=45;//Isotropic power gain of the antenna in dB

//CALCULATION
T=Tant+Tr;//The total noise in K
TdB=10*log10(T);//The total noise in dB
MdB=GdB-TdB;//Figure of merit of earth station in dB

//OUTPUT
mprintf('\nFigure of merit of earth station is MdB=%2.0f dB',MdB);

//=========================END OF PROGRAM===============================
