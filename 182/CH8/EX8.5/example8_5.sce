// to calculate the equivalent parallel capacitance and resistance
// example 8-5 in page 204
clc;
//Given dATA
R3=10e+3;// resistance R3 in ohm
f=100;//frequency in hertz
Cs=0.068e-6; Rs=183.8; // series capacitance in farad and resistance in ohm
//Calculation
Xs=1/(2*%pi*f*Cs);// series capacitive reactance in ohm
Rp=(Rs*Rs+Xs*Xs)/Rs;//equivalent parallel resistance in ohm
Xp=(Rs*Rs+Xs*Xs)/Xs;//equivalent parallel capacitive reactance in ohm
Cp=1/(2*%pi*f*Xp);// equivalent capacitance in farad
R4=Cs*R3/Cp;// parallel resistance in ohm
R1=R3*Rp/R4;// parallel resistance in ohm
printf("Rp=%.2f M-ohm\nCp=%.3f Micro-F\nR1=%.2f M-ohm\nR4=%.1f K-ohm",Rp/10^6,Cp*10^6,R1/10^6,R4/1000);
//result
//Rp=2.98 M-ohm
//Cp=0.068 Micro-F
//R1=2.03 M-ohm
//R4=14.7 K-ohm