//chapter-10 page 488 example 10.8
//==============================================================================
clc;
clear;

//For a Satellite communication link
EIRPdB=55.5;//Satellite ESM in dBW
MdB=35;//G/T ratio of earth station in dB
LfsdB=245.3//Freespace loss in dB

//CALCULATION
CNRdB=EIRPdB+MdB-LfsdB+228.6;//Carrier to Noise Ratio at the earth station receiver in dB

//OUTPUT
mprintf('\nCarrier to Noise Ratio at the earth station receiver is CNRdB=%2.1f dB',CNRdB);

//=========================END OF PROGRAM===============================
