//Chapter 2
//Example 2_17
//Page 34

clear;clc;

p=300*1e6;
e=200*1e6;

eph=p*3600;
printf("Energy recieved per hour = %.0f*10^10 J \n\n", eph*1e-10);
epf=e*1.6*1e-19;
printf("Energy released per fission = %.2f*10^-11 J \n\n", epf*1e11);
n=eph/epf;
printf("Number of atoms fissioned per hour = %.2f*10^21 \n\n", n*1e-21);
m=235/6.023/10^23*n;
printf("Mass of Uranium fissioned per hour = %.2f g \n\n", m);

