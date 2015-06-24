//Chapter 2
//Example 2_18
//Page 35

clear;clc;

d=30;
m=2;
e=200*1e6;

n=m/235*6.023*10^26;
fr=n/d/8760;
epf=e*1.6*10^-19;
p=epf*fr;

printf("Number of atoms = %.2f*10^24 \n\n", n*1e-24);
printf("Fission rate = %.3f*10^18 \n\n", fr*10^-19);
printf("Energy per fission = %.2f*10^-11 J \n\n", epf*10^11);
printf("Energy released per second = %.3f MW \n\n", p*10^-7);
