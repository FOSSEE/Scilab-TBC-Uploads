
//Example No.8.3.
//Page No.231.
clc;clear;
T = 1262;//Temperature -[K].
k = 1.38*10^(-23);//Boltzman's constant.
E = 0.5*1.6*10^(-19);//Here E= E-Ef.
f = 1/(1+exp(E/(k*T)));//'f' is the probability  of occupation of electron at 989 degree celcius.
printf("\nThe probability  of occupation of electron at 989 degree celcius is %.2f",f);
