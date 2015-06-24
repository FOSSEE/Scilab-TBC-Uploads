clear;
clc;
Vrms=10;R1=5;Z1=20;Z2=20;Z3=10;Z4=10;
Zab=(1/((1/Z1)+(1/Z2)))+(1/((1/Z3)+(1/Z4)));
Voc=R1;
I=Voc/(Zab+R1);
printf("Current I = %f Amps",I);
