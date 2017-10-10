// Ex 47 Page 391

clc;clear;close;
// Given
V=500;//V
ns=60;//slots
nc=20;//conductor/slot
ra=1.31;//ohm
Tmax=218;//N-m
fi=23*10**-3;//Wb

Tmin=Tmax/1.5//N-m
Z=ns*nc;//no of conductors
Ia=Tmax/(.159*fi*Z);//A
Imax=1.5*Ia;//A
I1=Imax;//A
I2=Ia;//A
R1=V/I1;//ohm
n= log(R1/ra)/log(I1/I2)+1;//no of studs
N=n-1;//no of section
printf("no of studs = %d and no. of section = %d",n,N)
R2=R1*(I2/I1);//ohm
R3=R2*(I2/I1);//ohm
R4=R3*(I2/I1);//ohm
R1s=R1-R2;//ohm
R2s=R2-R3;//ohm
R3s=R3-R4;//ohm
R4s=R4-ra;//ohm
printf("\n\n Resistance of 1st section = %.2f ohm",R1s)
printf("\n Resistance of 2nd section = %.2f ohm",R2s)
printf("\n Resistance of 3rd section = %.2f ohm",R3s)
printf("\n Resistance of 4th section = %.2f ohm",R4s)
