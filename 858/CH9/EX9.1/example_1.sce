clc
clear
printf("example 9.1 page number 384\n\n")

//to find the pressure drop in the coil

D = 38*10^-3;    //in m
U = 1   //in m/s
density = 998   //in kg/cubic m
viscosity = 8*10^-4   //in Pa-s
DC = 1   //in m
N = 10
e = 4*10^-6;   //in m

Re = (density*U*D)/viscosity;
printf ("Reynolds number = %f",Re)

f = (4*log10((e/D)/3.7+(6.81/Re)^0.9))^-2;
printf("\n\nfriction factor = %f",f);

L = 3.14*DC*N;

delta_Pstr = (2*f*U*density*L)/D;
printf("\n\npressure drop through straight pipe = %f Pa",delta_Pstr)

S = 1+3.54*(D/DC);
printf("\n\ncorrection factor = %f",S)

delta_P = S*delta_Pstr
printf("\n\npressure drop of coil = %f Pa",delta_P)
