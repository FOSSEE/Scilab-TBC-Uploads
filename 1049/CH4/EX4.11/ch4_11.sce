clear;
clc;
f=50;    //Hz
I_sb=3000;
t=1/(4*f);
T=1/(2*f);
I=sqrt(I_sb^2*t/T);    printf("surge current rating=%.2f A",I);
r=(I_sb/sqrt(2))^2*T;    printf("\nI^2*t rating=%.0f A^2.s",r);