//water chemistry//
//example 7.7//
W1=160;//Ca2+ in water in mg/l or ppm//
W2=72;//Mg2+ in water in mg/l or ppm//
W3=732;//HCO3- in water in mg/l or ppm//
W4=44;//CO2 in water in mg/l or ppm//
W5=16.4;//NaAlO2 in water in mg/l or ppm//
W6=30;//(CO3)2- in water in mg/l or ppm//
W7=17;//OH- in water in mg/l or ppm//
M1=100/40;//multiplication factor of Ca2+//
M2=100/24;//multiplication factor of Ca2+//
M3=100/(61*2);//multiplication factor of Ca2+//
M4=100/44;//multiplication factor of Ca2+//
M5=100/(82*2);//multiplication factor of Ca2+//
M6=100/60;//multiplication factor of Ca2+//
M7=100/(17*2);//multiplication factor of Ca2+//
P1=W1*M1;//in terms of CaCO3//
P2=W2*M2;//in terms of CaCO3//
P3=W3*M3;//in terms of CaCO3//
P4=W4*M4;//in terms of CaCO3//
P5=W5*M5;//in terms of CaCO3//
P6=W6*M6;//in terms of CaCO3//
P7=W7*M7;//in terms of CaCO3//
V=200000;//volume of water in lit//
L=0.74*(P2+P3+P4-P5+P7)*V;
L=L/10^6;//in kgs//
printf("Lime required is %fkg",L);
S=1.06*(P1+P2-P3-P5-P6+P7)*V;
S=S/10^6;//in kgs//
printf("\nSoda required is %fkg",S);