//example 6.15

clear;
clc;

//Given:
m2=3;//mass of the sucrose[gm]
m1=0.1;//mass of water [Kg]
Kf=1.86;//cryoscopic constant of water[K*Kg/mol]
dTf=0.16;//Lowering in freezing point[K]

//To find the molecular weight of sucrose
a=m1*dTf;
b=Kf*m2;
M2=b/a;//molecular weight
printf("M2=molecular weight ,    then M2=%f",M2); 