// To find the components and connections
// example 8-1 in page 194
clc;
// Given data
C=0.005e-6; Rs=8e+3; f=1e+3; // the circuits capacitance,resistance and measurement frequency in farad, ohm and hertz respectively
ohm_meter_reading=134e+3;// in ohm
//calculation
Xs=1/(2*%pi*f*C);//series inductive reactance in ohm
Rp=(Rs*Rs+Xs*Xs)/Rs;// parallel resistance ih ohm
Xp=(Rs*Rs+Xs*Xs)/Xs;// parallel inductive reactance in ohm
Cp=1/(2*%pi*f*Xp);// parallel capacitance in farad
printf("Rp=%d K-ohm\nXp=%.1f K-ohm\nCp=%.3f micro-F",Rp/1000,Xp/1000,Cp*1000000);
//result
// since the measured terminal resistance is 134 k-ohm, the circuit must consist of a 0.005 micro-farad capacitor connected in parallel with a 134 kilo-ohm resistor.For a series connected circuit. the terminal resistance would be much higher than 134 K-ohm