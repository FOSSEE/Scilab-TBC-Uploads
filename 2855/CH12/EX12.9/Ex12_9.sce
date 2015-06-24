//Chapter 12
//page no 443
//given
clc;
clear all;
c1=4;               //channel1
c2=8;               //channel2
c3=16;               //channel3
fb=2.5;            //in Gb/s
Lmax1=6.1*10^3/(c1*fb)^2;
printf("\n Maximum Link span for %0.0f channel, Lmax = %0.0f km \n",c1,Lmax1);
Lmax2=6.1*10^3/(c2*fb)^2;
printf("\n Maximum Link span for %0.0f channel, Lmax = %0.2f km \n",c2,Lmax2);
Lmax3=6.1*10^3/(c3*fb)^2;
printf("\n Maximum Link span for %0.0f channel, Lmax = %0.1f km \n",c3,Lmax3);
