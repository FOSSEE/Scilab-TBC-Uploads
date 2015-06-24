//2.11
clc;
RAB=125;
Rtotal=5000;
R2=75/125*Rtotal;
R4=2500;
ei=5;
eo=[(R2/Rtotal)-(R4/Rtotal)]*ei;
printf("Output voltage = %.1f V",eo)
