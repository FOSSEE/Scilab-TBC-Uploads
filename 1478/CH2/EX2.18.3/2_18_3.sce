//water and its treatment//
//example 2.18.3//
clc
W1=29.1;//Mg(HCO3)2 in water in mg/lit//
W2=40.5;//Ca(HCO3)2 in water in mg/lit//
W3=11.1;//CaCl2 in water in mg/lit//
W4=15.82;//MgCl2 in water in mg/lit//
W5=28.5;//NaCl in water in mg/lit//
W6=22.0;//CO2 in water in mg/lit//
M1=100/146.007;//multiplication factor of Mg(HCO3)2//
M2=100/162;//multiplication factor of Ca(HCO3)2//
M3=100/111;//multiplication factor of CaCl2//
M4=100/95.005;//multiplication factor of MgCl2//
P1=W1*M1;//Mg(HCO3)2 in terms of CaCO3//
P2=W2*M2;//Ca(HCO3)2 in terms of CaCO3//
P3=W3*M3;//CaCl2  in terms of CaCO3//
P4=W4*M4;//MgCl2 in terms of CaCO3//
printf ("We do not take NaCl and CO2 since they do not contribute to hardness ");
C=P1+P2;
printf("\nCarbonate hardness is %.3f mg/l or ppm",C);
NC=P3+P4;
printf("\nNon Carbonate hardness is %.3f mg/l or ppm",NC);