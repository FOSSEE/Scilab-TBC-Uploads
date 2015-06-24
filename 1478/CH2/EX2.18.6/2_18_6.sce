//water and its treatment//
//example 2.18.6//
clc
W1=29.2;//MgCO3 in water in mg/lit//
W2=36;//MgSO4 in water in mg/lit//
W3=22.2;//CaCl2 in water in mg/lit//
W4=142.5;//MgCl2 in water in mg/lit//
M1=100/84;//multiplication factor of MgCO3//
M2=100/120;//multiplication factor of MgSO4//
M3=100/111;//multiplication factor of CaCl2//
M4=100/95;//multiplication factor of MgCl2//
P1=W1*M1;//MgCO3 in terms of CaCO3//
P2=W2*M2;//MgSO4 in terms of CaCO3//
P3=W3*M3;//CaCl2  in terms of CaCO3//
P4=W4*M4;//MgCl2 in terms of CaCO3//
T=P1;
printf("\nCarbonate hardness is %.2f mg/l or ppm",T);
P=P2+P3+P4;
printf("\nNon Carbonate hardness is %.0f mg/l or ppm",P);