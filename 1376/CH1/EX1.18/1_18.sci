//1.18
clc;
S=98+100+102+98+100+100+104+104+105+97;
n=10;
Avg=S/n;
P=1-abs((104-Avg)/Avg);
printf("Precision for the 8th reading=%.2f",P)
