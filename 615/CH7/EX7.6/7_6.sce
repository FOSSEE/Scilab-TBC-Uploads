//water chemistry//
//example 7.6//
W1=12;//Mg2+ in water in ppm or mg/l//
W2=40;//Ca2+ in water in ppm or mg/l//
W3=164.7;//HCO3- in water in ppm or mg/l//
W4=30.8;//CO2 in water in ppm or mg/l//
M1=100/24;//multiplication factor of Mg2+//
M2=100/40;//multiplication factor of Mg2+//
M3=100/61;//multiplication factor of Mg2+//
M4=100/44;//multiplication factor of Mg2+//
P1=W1*M1;// in terms of CaCO3//
P2=W2*M2;// in terms of CaCO3//
P3=W3*M3;// in terms of CaCO3//
P4=W4*M4;// in terms of CaCO3//
V=50000//volume of water in lit//
L=0.74*(P1+P3+P4)*V;
printf("Lime required is %fmg",L);
