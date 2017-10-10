//water//
//page 1.9 example 3//
clc
W1=150;//Ca2+ in water in mg/L//
W2=60;//Mg2+ in water in mg/L//
M1=100/40;//multiplication factor of Ca2+//
M2=100/24;//multiplication factor of Mg2+//
P1=W1*M1;//Ca2+ in terms of CaCO3//
P2=W2*M2;//Mg2+ in terms of CaCO3//
T=P1+P2;
printf("\nTotal hardness is %.0f mg/L",T);