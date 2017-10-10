//water//
//page 1.86 example 1//
clc
W1=14.6;//Mg(HCO3)2 in water in mg/L//
W2=8.1;//Ca(HCO3)2 in water in mg/L//
W3=29.6;//Mg(NO3)2 in water in mg/L//
W4=19;//MgCl2 in water in mg/L//
W5=24;//MgSO4 in water in mg/L//
M1=100/146;//multiplication factor of Mg(HCO3)2//
M2=100/162;//multiplication factor of Ca(HCO3)2//
M3=100/148;//multiplication factor of Mg(NO3)2//
M4=100/95;//multiplication factor of MgCl2//
M5=100/120;//multiplication factor of MgSO4//
P1=W1*M1;//Mg(HCO3)2 in terms of CaCO3//
P2=W2*M2;//Ca(HCO3)2 in terms of CaCO3//
P3=W3*M3;//Mg(NO3)2  in terms of CaCO3//
P4=W4*M4;//MgCl2  in terms of CaCO3//
P5=W5*M5;//MgSO4  in terms of CaCO3//
T=P1+P2;
printf("\nTemporary hardness is %.0f ppm",T);
P=P3+P4+P5;
printf("\nPermanant hardness is %.0f ppm",P);