//Example 12.3

clear;

clc;

n=12;

Vref=10;

Troom=25;

Tmin=0

Tmax=70;

erfa=1/4;

er=Vref/(2^14);

Temax=Tmax-Troom;

id=er/Temax;

TCmaxVref=id/Vref;

ng=2;//Noise Gain

TCmaxVos=id/ng;

printf("TCmax(Vref)=(+-)%.2f ppm/degC",TCmaxVref*10^6);

printf("\nTCmax(Vos)=(+-)%.1f uV/degC",TCmaxVos*10^6);