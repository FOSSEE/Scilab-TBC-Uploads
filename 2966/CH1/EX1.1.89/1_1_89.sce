//water//
//page 1.89 example 1//
clc
W1=19;//MgCl2 in water in mg/L//
W2=5;//CaCO3 in water in mg/L//
W3=29.5;//Ca(HCO3)2 in water in mg/L//
W4=13;//CaSO4 in water in mg/L//
M1=100/95;//multiplication factor of MgCl2//
M2=100/100;//multiplication factor of CaCO3//
M3=100/162;//multiplication factor of Ca(HCO3)2//
M4=100/136;//multiplication factor of CaSO4//
P1=W1*M1;//MgCl2 in terms of CaCO3//
P2=W2*M2;//CaCO3 in terms of CaCO3//
P3=W3*M3;//Ca(HCO3)2  in terms of CaCO3//
P4=W4*M4;//CaSO4  in terms of CaCO3//
T=P2+P3;
printf("\nTemporary hardness is %.2f ppm",T);
P=P1+P4;
printf("\nPermanant hardness is %.2f ppm",P);
To=T+P;
printf("\nTotal hardness is %.2f ppm",To);