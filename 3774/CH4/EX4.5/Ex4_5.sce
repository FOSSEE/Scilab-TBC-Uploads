// exa 4.5 Pg 107
clc;clear;close;

// Given Data
Sut=650;//MPa
N=10**5;// cycles
Se_dash = 0.5*Sut;// MPa
of=5;// unit
ob=6;//unit
bf=ob-of;// unit
be=3;//unit

// calculating endurance section wise
OE=log10(Se_dash);
OA=log10(0.9*Sut);
AE=OA-OE;
//log10_Sf=OD=OE+ED=OE+FC
log10_Sf=OE+(bf/be)*AE;
Sf=10**log10_Sf; // (MPa) Endurance
printf('\n Endurance of specimen = %.2f MPa',Sf)


