//water chemistry//
//example 7.3//
W1=162;//Ca(HCO3)2 in water in mg/lit//
W2=73;//MgHCO3 in water in mg/lit//
W3=136;//CaSO4 in water in mg/lit//
W4=95;//MgCl2 in water in mg/lit//
W5=111;//CaCl2 in water in mg/lit//
W6=100;//NaCl in water in mg/lit//
M1=100/162;//multiplication factor of Ca(HCO3)2//
M2=100/146;//multiplication factor of MgHCO3//
M3=100/136;//multiplication factor of CaSO4//
M4=100/95;//multiplication factor of MgCl2//
M5=100/111;//multiplication factor of CaCl2//
M6=100/100;//multiplication factor of NaCl//
P1=W1*M1;//Ca(HCO3)2 in terms of CaCO3 or //
P2=W2*M2;//MgHCO3 in terms of CaCO3 or //
P3=W3*M3;//CaSO4  in terms of CaCO3 or //
P4=W4*M4;//MgCl2 in terms of CaCO3 or //
P5=W5*M5;//CaCl2 in terms of CaCO3 or //
printf("We do not take NaCl since it does not contribute to hardness");
T=P1+P2;
printf("\nTemporary hardness is %fmg/l or ppm",T);
P=P3+P4+P5;
printf("\nPermanant hardness is %fmg/l or ppm",P);
To=T+P;
printf("\nTotal hardness is %fmg/l or ppm",To);