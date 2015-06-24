//water chemistry//
//example 7.1//
W1=16.2;//Ca(HCO3)2 in water in mg/lit//
W2=7.3;//MgHCO3 in water in mg/lit//
W3=13.6;//CaSO4 in water in mg/lit//
W4=9.5;//MgCl2 in water in mg/lit//
M1=100/162;//multiplication factor of Ca(HCO3)2//
M2=100/146;//multiplication factor of MgHCO3//
M3=100/136;//multiplication factor of CaSO4//
M4=100/95;//multiplication factor of MgCl2//
P1=W1*M1;//Ca(HCO3)2 in terms of CaCO3 or //
P2=W2*M2;//MgHCO3 in terms of CaCO3 or //
P3=W3*M3;//CaSO4  in terms of CaCO3 or //
P4=W4*M4;//MgCl2 in terms of CaCO3 or //
T=P1+P2;
printf("Temporary hardness is %fmg/l or ppm",T);
P=P3+P4;
printf("\nPermanant hardness is %fmg/l or ppm",P);
To=T+P;
printf("\nTotal hardness is %fmg/l or ppm",To);