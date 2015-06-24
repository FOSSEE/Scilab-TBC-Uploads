//Example 11.15

clear;

clc;

TAmax=60;

Iomax=0.8;

VImax=12;

TJmax=125;

Vo=5;

thetaJAmax=(TJmax-TAmax)/[(VImax-Vo)*Iomax];

thetaJC=5;

thetaCA=thetaJAmax-thetaJC;

thetaCS=0.6;

thetaSA=thetaCA-thetaCS;

printf("thetaSA=%.f degCelsius/W",thetaSA);

printf("\nAccording to the catalogs, a suitable heatsink example is the IERC HP1 series,");

printf("\nwhose thetaSA rating is in the range of 5 degCelsius/W to 6 degCelsius/W.");