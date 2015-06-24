//water and its treatment//
//example 2.18.10//
clc
W1=40.5;//Ca(HCO3)2 in water in mg/lit//
W2=23.75;//MgCl2 in water in mg/lit//
W3=21;//MgCO3 in water in mg/lit//
W4=6;//SiO2 in water in mg/lit//
W5=3;//CO2 in water in mg/lit//
W6=55.5;//CaCl2 in water in mg/lit//
M1=100/162;//multiplication factor of Ca(HCO3)2//
M2=100/95;//multiplication factor of MgCl2//
M3=100/84;//multiplication factor of MgCO3//
M6=100/111;//multiplication factor of CaCl2//
P1=W1*M1;//Ca(HCO3)2 in terms of CaCO3 or //
P2=W2*M2;//MgCl2 in terms of CaCO3 or //
P3=W3*M3;//MgCO3  in terms of CaCO3 or //
P6=W6*M6;//CaCl2 in terms of CaCO3 or //
printf ("We do not take SiO2 and CO2 since they do not contribute to hardness ");
C=P1+P3;
printf("\nCarbonate hardness is %.0f mg/l or ppm",C);
NC=P2+P6;
printf("\nNon Carbonate hardness is %.0f mg/l or ppm",NC);