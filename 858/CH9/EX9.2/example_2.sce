clc
clear
printf("example 9.2 page number 384\n\n")

//to find the shell side pressure drop in heat exchanger

U = 0.5   //in m/s
N = 19;
DT = 0.026   //in m
L = 2.7   //in m
DS = 0.2   //in m
e = 0.0002   //in m
density = 836  //in kg/cu m
viscosity = 0.00032   //in Pa s
Pr = 6.5;
Prw = 7.6;


HYDIA = (DS^2-N*DT^2)/(DS+N*DT);

Re = HYDIA*U*density/viscosity;
printf ("Reynolds number = %f",Re)

f = (4*log10((e/HYDIA)/3.7+(6.81/Re)^0.9))^-2;
printf("\n\nfriction factor = %f",f);

L = 3.14*DT*N;

delta_Pstr = (2*f*U*density*L)/HYDIA;
printf("\n\npressure drop through straight pipe = %f Pa",delta_Pstr)

S = (Prw/Pr)^0.33;
printf("\n\ncorrection factor = %f",S)

delta_P = S*delta_Pstr
printf("\n\npressure drop of coil = %f Pa",delta_P)
