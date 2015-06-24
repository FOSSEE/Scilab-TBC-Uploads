
//Example No.9.9.
//Page No 271.
clc;clear;
Eg = 1.2*1.6*10^(-19);//Energy gap.
T1 = 300;//Temperature T1 -[K].
T2 = 600;//Temperature T2 -[K].
k = 1.38*10^(-23);//Boltzman's constant.
N = ((T2/T1)^(3/2))*exp((Eg/(2*k))*((1/T1)-(1/T2)))*10^(-3);//Ratio between  the conductivity of the material.
printf("\nRatio between  the conductivity of the material at 600 K and 300 K is %.2f",N);
