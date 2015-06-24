//water//
//page 1.7 example 1//
clc
W1=16.8;//Mg(HCO3)2 in water in mg/L//
W2=19;//MgCl2 in water in mg/L//
W3=24;//MgSO4 in water in mg/L//
W4=29.6;//Mg(NO3)2 in water in mg/L//
W5=04;//CaCO3 in water in mg/L//
W6=10;//MgCO3 in water in mg/L//
M1=100/146;//multiplication factor of Mg(HCO3)2//
M2=100/95;//multiplication factor of MgCl2//
M3=100/120;//multiplication factor of MgSO4//
M4=100/148;//multiplication factor of Mg(NO3)2//
M5=100/100;//multiplication factor of CaCO3//
M6=100/84;//multiplication factor of MgCO3//
P1=W1*M1;//Mg(HCO3)2 in terms of CaCO3 equivalent/litre//
P2=W2*M2;//MgCl2 in terms of CaCO3 equivalent/litre//
P3=W3*M3;//MgSO4  in terms of CaCO3 equivalent/litre//
P4=W4*M4;//Mg(NO3)2 in terms of CaCO3 equivalent/litre//
P5=W5*M5;//CaCO3 in terms of CaCO3 equivalent/litre//
P6=W6*M6;//MgCO3 in terms of CaCO3 equivalent/litre//
T=P1+P5+P6;
printf("\nTemporary hardness is %.1f mg CaCO3 equivalent/litre",T);
P=P2+P3+P4;
printf("\nPermanant hardness is %.0f mg CaCO3 equivalent/litre",P);