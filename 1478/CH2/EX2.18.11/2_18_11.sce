//water and its treatment//
//example 2.18.11//
clc
W1=17.5;//Ca(HCO3)2 in water in mg/lit//
W2=14.6;//Mg(HCO3)2 in water in mg/lit//
W3=9.5;//MgCl2 in water in mg/lit//
W4=12.0;//MgSO4 in water in mg/lit//
W5=8.4;//MgCO3 in water in mg/lit//
W6=5.5;//CaCl2 in water in mg/lit//
W7=35;//NaCl in water in mg/lit//
M1=100/162;//multiplication factor of Ca(HCO3)2//
M2=100/146;//multiplication factor of Mg(HCO3)2//
M3=100/95;//multiplication factor of MgCl2//
M4=100/120;//multiplication factor of MgSO4//
M5=100/84;//multiplication factor of MgCO3//
M6=100/111;//multiplication factor of CaCl2//
P1=W1*M1;//Ca(HCO3)2 in terms of CaCO3 or //
P2=W2*M2;//Mg(HCO3)2 in terms of CaCO3 or //
P3=W3*M3;//MgCl2  in terms of CaCO3 or //
P4=W4*M4;//MgSO4 in terms of CaCO3 or //
P5=W5*M5;//MgCO3 in terms of CaCO3 or //
P6=W6*M6;//CaCl2 in terms of CaCO3 or //
printf ("We do not take NaCl since it does not contribute to hardness ");
T=P1+P2+P5;
printf("\nTemporary hardness is %.1f mg/l or ppm",T);
P=P3+P4+P6;
printf("\nPermanant hardness is %.0f mg/l or ppm",P);
To=T+P;
printf("\nTotal hardness is %.1f mg/l or ppm",To);