//water//
//page 1.8 example 2//
clc
W1=7.1;//Mg(HCO3)2 in water in mg/L//
W2=8.1;//Ca(HCO3)2 in water in mg/L//
W3=4.2;//MgCO3 in water in mg/L//
W4=10;//CaCO3 in water in mg/L//
W5=24;//MgSO4 in water in mg/L//
M1=100/146;//multiplication factor of Mg(HCO3)2//
M2=100/162;//multiplication factor of Ca(HCO3)2//
M3=100/84;//multiplication factor of MgCO3//
M4=100/100;//multiplication factor of CaCO3//
M5=100/120;//multiplication factor of MgSO4//
P1=W1*M1;//Mg(HCO3)2 in terms of CaCO3//
P2=W2*M2;//Ca(HCO3)2 in terms of CaCO3//
P3=W3*M3;//MgCO3 in terms of CaCO3//
P4=W4*M4;//CaCO3 in terms of CaCO3//
P5=W5*M5;//MgSO4 in terms of CaCO3//
C=P1+P2+P3+P4;
printf("\nCarbonate hardness is %.0f ppm",C);
NC=P5;
printf("\nNon-Carbonate hardness is %.0f ppm",NC);