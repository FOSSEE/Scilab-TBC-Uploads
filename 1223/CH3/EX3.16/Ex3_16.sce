clear;
clc;
//Example 3.16
R1=10;
b=50;
Vbe=0.7;
V1=-5;
I1=-(V1+Vbe)/R1;
printf('\nreference current=%.3f mA\n',I1)
Iq=I1/(1+2/b);
printf('\nbias current=%.3f mA\n',Iq)
//Ib=Ib1=Ib2
Ib=Iq/b;
printf('\nbase current=%f mA\n',Ib)
