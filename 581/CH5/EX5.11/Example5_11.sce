
clear;
clc;

printf("\t Example 5.11\n");

Q=14; //steady heat transfer,W
D=0.06; //diameter of heat source,m
l=0.3;; // length of source below surface ,m
T=308; //temperature of heat source,K
T1=294; //temperature of surface,K

k=(Q/(T-T1))*(1-(D/2)/(D*10))/(4*3.14*D/2)+0.025; // thermal conductivity of soil

printf("\t thermal conductivity is : %.3f W/(m*K)\n",k);

//end