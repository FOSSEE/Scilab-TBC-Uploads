//water chemistry//
//example 7.10//
W1=40;//amount of Ca2+ in water in mg/l//
W2=24;//amount of Mg2+ in water in mg/l//
W3=8.05;//amount of Na+ in water in mg/l//
W4=183;//amount of (HCO3)- in water in mg/l//
W5=55.68;//amount of (SO4)2- in water in mg/l//
W6=6.74;//amount of Cl- in water in mg/l//
M1=100/40;//multiplication factor of Ca2+//
M2=100/24;//multiplication factor of Mg2+//
M3=100/(23*2);//multiplication factor of Na+//
M4=100/(61*2);//multiplication factor of (HCO3)-//
M5=100/96;//multiplication factor of (SO4)2-//
M6=100/(35.5*2);//multiplication factor of Cl-//
P1=W1*M1;//in terms of CaCO3//
P2=W2*M2;//in terms of CaCO3//
P3=W3*M3;//in terms of CaCO3//
P4=W4*M4;//in terms of CaCO3//
P5=W5*M5;//in terms of CaCO3//
P6=W6*M6;//in terms of CaCO3//


printf("magnesium alkalinity is %fppm",P4-P1);
printf("\ncalsium alkalinity is %fppm",P1);
printf("\ntotal alkalinity is %fppm",P1+P4-P1);
printf("\ntotal hardness is %fppm",P1+P2);
printf("\ncalsium temporary hardness is %fppm",P1);
printf("\nMagnesium temporary hardness id %fppm",P4-P1);
printf("\nMagnesium permanant hardness is %fppm",P2-(P4-P1));
printf("\n Ca(HCO3)2 salt is %fppm",P1);
printf("\nMg(HCO3)2 salt is %fppm",P4-P1);
printf("\nMgSO4 salt is %fppm",P2-(P4-P1));
printf("\nNaCl salt is %fppm",P6);