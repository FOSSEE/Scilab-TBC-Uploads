//water and its treatment//
//example 2.18.2//
clc
W1=40.5;//Ca(HCO3)2 in water in mg/lit//
W2=33.3;//CaCl2 in water in mg/lit//
W3=41;//Ca(NO3)2 in water in mg/lit//
W4=101;//KNO3 in water in mg/lit//
W5=33.6;//MgCO3 in water in mg/lit//
M1=100/162;//multiplication factor of Ca(HCO3)2//
M2=100/111;//multiplication factor of CaCl2//
M3=100/164;//multiplication factor of Ca(NO3)2//
M5=100/84;//multiplication factor of MgCO3//
P1=W1*M1;//Ca(HCO3)2 in terms of CaCO3//
P2=W2*M2;//CaCl2 in terms of CaCO3//
P3=W3*M3;//Ca(NO3)2  in terms of CaCO3//
P5=W5*M5;//MgCO3 in terms of CaCO3//
printf ("We do not take KNO3 since it does not contribute to hardness ");
C=P1+P5;
printf("\nCarbonate hardness is %.0f mg/l or ppm",C);
NC=P2+P3;
printf("\nNon Carbonate hardness is %.0f mg/l or ppm",NC);