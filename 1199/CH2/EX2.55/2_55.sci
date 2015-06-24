//2.55
clc;
Kh=-1*10^-6;
I=3;
B=0.5;
t=2*10^-3;
Eh=Kh*I*B*10^3/t;
printf("output voltage =%.2f mV",Eh)
