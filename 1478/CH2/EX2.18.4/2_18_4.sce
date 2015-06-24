//water and its treatment//
//example 2.18.4//
clc
W1=16.2;//Ca(HCO3)2 in water in mg/lit//
W2=14.6;//Mg(HCO3)2 in water in mg/lit//
W3=9.5;//MgCl2 in water in mg/lit//
W4=48;//MgSO4 in water in mg/lit//
W5=12;//KCl in water in mg/lit//
M1=100/162;//multiplication factor of Ca(HCO3)2//
M2=100/146;//multiplication factor of Mg(HCO3)2 //
M3=100/95;//multiplication factor of MgCl2//
M4=100/120;//multiplication factor of MgSO4//
P1=W1*M1;//Ca(HCO3)2 in terms of CaCO3//
P2=W2*M2;//Mg(HCO3)2  in terms of CaCO3//
P3=W3*M3;//MgCl2  in terms of CaCO3//
P4=W4*M4;//MgSO4 in terms of CaCO3//
printf ("We do not take KCl since it does not contribute to hardness ");
C=P1+P2;
printf("\nCarbonate hardness is %.0f mg/l or ppm",C);
NC=P3+P4;
printf("\nNon Carbonate hardness is %.0f mg/l or ppm",NC);