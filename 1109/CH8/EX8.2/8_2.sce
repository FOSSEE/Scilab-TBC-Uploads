clear;
clc;
P1=67;P2=30;
L=10*log10(P1/P2);
printf("Insertion loss = %f db",fix(L*100)/100);
