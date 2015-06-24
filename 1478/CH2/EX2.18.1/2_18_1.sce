//water and its treatment//
//example 2.18.1//
clc
W1=12.5;//CaCO3 in water in mg/lit//
W2=8.4;//MgCO3 in water in mg/lit//
W3=22.2;//CaCl2 in water in mg/lit//
W4=9.5;//MgCl2 in water in mg/lit//
W5=33;//CO2 in water in mg/lit//
W6=6.68;//NaHCO3 in water in mg/lit//
M1=100/100;//multiplication factor of CaCO3//
M2=100/84;//multiplication factor of MgCO3//
M3=100/111;//multiplication factor of CaCl2//
M4=100/95;//multiplication factor of MgCl2//
M6=100/84;//multiplication factor of NaHCO3//
P1=W1*M1;//CaCO3 in terms of CaCO3//
P2=W2*M2;//MgCO3 in terms of CaCO3//
P3=W3*M3;//CaCl2  in terms of CaCO3//
P4=W4*M4;//MgCl2 in terms of CaCO3//
P6=W6*M6;//NaHCO3 in terms of CaCO3//
printf ("We do not take CO2 since it does not contribute to hardness ");
C=P1+P2+P6;
printf("\nCarbonate hardness is %.1f mg/l or ppm",C);
NC=P3+P4;
printf("\nNon Carbonate hardness is %.0f mg/l or ppm",NC);