//water and its treatment//
//example 2.18.7.A//
clc
W1=32.4;//Ca(HCO3)2 in water in mg/lit//
W2=29.2;//Mg(HCO3)2 in water in mg/lit//
W3=13.5;//CaSO4 in water in mg/lit//
M1=100/162;//multiplication factor of Ca(HCO3)2//
M2=100/146;//multiplication factor of Mg(HCO3)2 //
M3=100/136;//multiplication factor of CaSO4//
P1=W1*M1;//Ca(HCO3)2 in terms of CaCO3//
P2=W2*M2;//Mg(HCO3)2  in terms of CaCO3//
P3=W3*M3;//CaSO4 in terms of CaCO3//
T=P1+P2;
printf("\nTemporary hardness is %.0f mg/l or ppm",T);
P=P3;
printf("\nPermanant hardness is %.0f mg/l or ppm",P);
To=T+P;
printf("\nTotal hardness is %.0f mg/l or ppm",To);