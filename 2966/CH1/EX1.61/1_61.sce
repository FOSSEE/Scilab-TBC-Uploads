//water//
//page 1.87 example 1//
clc
W1=7.3;//Mg(HCO3)2 in water in mg/L//
W2=9.5;//MgCl2 in water in mg/L//
W3=16.2;//Ca(HCO3)2 in water in mg/L//
W4=13.6;//CaSO4 in water in mg/L//
M1=100/146;//multiplication factor of Mg(HCO3)2//
M2=100/95;//multiplication factor of MgCl2//
M3=100/162;//multiplication factor of Ca(HCO3)2//
M4=100/136;//multiplication factor of CaSO4//
P1=W1*M1;//Mg(HCO3)2 in terms of CaCO3//
P2=W2*M2;//MgCl2 in terms of CaCO3//
P3=W3*M3;//Ca(HCO3)2  in terms of CaCO3//
P4=W4*M4;//CaSO4  in terms of CaCO3//
T=P1+P3;
printf("\nTemporary hardness is %.0f ppm",T);
P=P2+P4;
printf("\nPermanant hardness is %.0f ppm",P);
To=T+P;
printf("\nTotal hardness is %.0f ppm",To);