//1.14
clc;
Isub=2000;
T=10*10^-3;
t=5*10^-3;
I=(Isub^2*t/T)^0.5;
printf("one cycle surge current rating=%.1f A", I)
//a=I^2t
a=I^2*T;
printf("\nI^2t=%.1f A^2Sec", a)