//water and its treatment//
//example 2.18.5//
clc
W1=81;//Ca(HCO3)2 in water in mg/lit//
W2=84;//MgCO3 in water in mg/lit//
W3=22.2;//CaCl2 in water in mg/lit//
W4=60;//MgSO4 in water in mg/lit//
W5=30;//KCl in water in mg/lit//
M1=100/162;//multiplication factor of Ca(HCO3)2//
M2=100/84;//multiplication factor of MgCO3//
M3=100/111;//multiplication factor of CaCl2//
M4=100/120;//multiplication factor of MgSO4//
P1=W1*M1;//Ca(HCO3)2 in terms of CaCO3//
P2=W2*M2;//MgCO3 in terms of CaCO3//
P3=W3*M3;//CaCl2  in terms of CaCO3//
P4=W4*M4;//MgSO4 in terms of CaCO3//
printf ("We do not take KCl since it does not contribute to hardness ");
T=P1+P2;
printf("\nTemporary hardness is %.0f mg/l or ppm",T);
P=P3+P4;
printf("\nPermanant hardness is %.0f mg/l or ppm",P);
To=T+P;
printf("\nTotal hardness is %.0f mg/l or ppm",To);